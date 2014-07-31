#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>     /* Symbolic Constants */
#include <sys/types.h>  /* Primitive System Data Types */
#include <sys/mman.h>  /* Primitive System Data Types */
#include <sys/time.h>  /* gettimeofday */
#include <errno.h>      /* Errors */
#include <stdio.h>      /* Input/Output */
#include <stdlib.h>     /* General Utilities */
#include <pthread.h>    /* POSIX Threads */
#include <string.h>     /* String handling */
#include <signal.h>     /* Signal handling */
#include <semaphore.h>  /* Semaphore */
#include <assert.h>

#include "log.h"
FILE *Ferror;
FILE *flog;
FILE *configFile;
extern short *addr;
extern void _StraightTaint_log(short);
#define DFT

struct buffer buf1, buf2;
struct buffer *buf;
pthread_t logger_thread;

short * _StraightTaint_init (short ** ptrToAddr)
{
    Ferror=fopen("LoggingError","w+");
#ifndef _HACK_LOG
    buf1.next = &buf2;
    buf2.next = &buf1;
    buf = &buf1;
    char *ptr = (char *)malloc(BUF_SIZE*2); //BUF_SIZE*2 byte buffer
    if (ptr == NULL) {
        perror("malloc");
        exit(1);
    }
    buf1.start = (short *) ptr;
    buf1.end = (short *) (ptr + BUF_SIZE) - 1;
    buf2.start = (short *) (ptr + BUF_SIZE);
    buf2.end = (short *) (ptr + 2*BUF_SIZE) - 1;
    sem_init(&(buf1.full), 0, 0);
    sem_init(&(buf1.empty), 0, 0);
    sem_init(&(buf2.full), 0, 0);
    sem_init(&(buf2.empty), 0, 0);
    sem_post(&(buf1.empty));
    sem_post(&(buf2.empty));

    int pid = getpid();
    char filename[1024];
    snprintf(filename, 1024, "tmp.%d", pid);
    flog = fopen(filename, "w+");
    configFile=fopen("configFile","w+");
    fprintf(configFile,"%s\n",filename);
    fflush(configFile);
    //printf("buffer 1: start %p end %p size %.1fMB\n", buf1.start, buf1.end, (buf1.end-buf1.start)*2.0/1024/1024);
    //printf("buffer 2: start %p end %p size %.1fMB\n", buf2.start, buf2.end, (buf2.end-buf2.start)*2.0/1024/1024);

    int regExit=atexit(_StraightTaint_logger_thread_terminate);
    if(regExit)
    {
      fprintf(Ferror,"Failed in registering atexit() returns %d. pid: %d\n",getpid(), regExit);
      fflush(Ferror);
      exit(-1);
    }
    if ( pthread_create(&logger_thread, NULL, _StraightTaint_logger_thread, NULL) ){
        perror("failed to create logger thread");
        fprintf(Ferror,"failed to create logger thread. pid: %d\n",getpid());
	fflush(Ferror);
	exit(0);
    }
    //printf("init complete...\n");
    return buf->start;
#else
    int pid = getpid();
    char filename[1024];
    snprintf(filename, 1024, "tmp.%d", pid);
    flog = fopen(filename, "w+");
    configFile=fopen("configFile","w+");
    fprintf(configFile,"%s\n",filename);
    fflush(configFile);
    system("auditctl -D");
    char cmd[1024];
    snprintf(cmd,1024,"sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\0",pid);
//    snprintf(cmd,1024,"sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S kill -S close");
    //system(cmd);
    printf("init complete...\n");
//    return buf->start;
#endif


}

static inline void do_StraightTaint_fork(int pid)
{
    if (pid > 0) { //parent process
//#ifndef _HACK_LOG
        _StraightTaint_log(0);
        _StraightTaint_log(pid/65536);
        _StraightTaint_log(pid%65536);
//#endif
        //do nothing
    } else if (pid == 0) { //child process
#ifdef _HACK_LOG
        char filename[1024];
        int nrPid=getpid();//syscall(__NR_getpid);
        snprintf(filename, 1024, "tmp.%d", nrPid);
        //record the log-file-name in configFile
        fprintf(configFile,"%s\n",filename);
        fflush(configFile);
        //run auditd for this new process
        char cmd[1024];
snprintf(cmd,1024,"sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\0",nrPid);
     //   system(cmd);
        //copy parent log to child log
        FILE* flogParent=flog;
        flog = fopen(filename, "w+");
//        rewind(flogParent);
        int bbid=0;
        int size;
        fflush(flog);
 //       fflush(flogParent);
/*        while(EOF!=fscanf(flogParent,"%d",&bbid)){
            // printf("bbid: %d\n",bbid);
            fprintf(flog,"%d\n",bbid);
        }*/
        fclose(flogParent);
#else

        buf = &buf1;
        addr = buf->start;
        sem_init(&(buf1.full), 0, 0);
        sem_init(&(buf1.empty), 0, 0);
        sem_init(&(buf2.full), 0, 0);
        sem_init(&(buf2.empty), 0, 0);
        sem_post(&(buf1.empty));
        sem_post(&(buf2.empty));

        int pid = getpid();
        char filename[1024];
        snprintf(filename, 1024, "tmp.%d", pid);
        flog = fopen(filename, "w+");
        fprintf(Ferror,"tmpfilename: %s. flog:%p. pid: %d\n",filename, flog, getpid());
        fflush(Ferror);
	assert(flog);
        //configFile=fopen("configFile","w+");
        fprintf(configFile,"%s\n",filename);
        fflush(configFile);
        //printf("buffer 1: start %p end %p size %.1fMB\n", buf1.start, buf1.end, (buf1.end-buf1.start)*2.0/1024/1024);
        //printf("buffer 2: start %p end %p size %.1fMB\n", buf2.start, buf2.end, (buf2.end-buf2.start)*2.0/1024/1024);

        int regExit=atexit(_StraightTaint_logger_thread_terminate);
        if(regExit)
	{
	  fprintf(Ferror,"Failed in registering atexit() returns %d. pid: %d\n",getpid(), regExit);
          fflush(Ferror);
          exit(-1);
	}
        if ( pthread_create(&logger_thread, NULL, _StraightTaint_logger_thread, NULL) ){
            perror("failed to create logger thread");
            fprintf(Ferror,"failed to create logger thread. pid: %d\n",getpid());
            fflush(Ferror);
	    exit(0);
        }
        fprintf(Ferror,"In fork: create logger thread. pid: %d\n",getpid());
        fflush(Ferror);

#endif
    } else {
        assert(0);
    }
}

void _StraightTaint_fork32(int pid)
{
    do_StraightTaint_fork(pid);
}

void _StraightTaint_fork64(long lpid)
{
    int pid = (int)lpid;
    do_StraightTaint_fork(pid);
}
