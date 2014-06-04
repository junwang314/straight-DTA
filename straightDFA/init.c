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

#include "log.h"

FILE *flog;
FILE *configFile;
#define DFT

/*
//total buffer size
#define SHMSZ 4096*1024*100    //400MB

static short ** p2addr;
short *buf1, *buf2, *pos, *buf;
struct timeval tv_old, tv_new;

unsigned long sum = 0;
void buf_switcher()
{
    //get the current posotion
    pos = *p2addr;
    //printf("&addr=%p\n", p2addr);
    //printf("addr=%p\n", *p2addr);

    // calcalute time, size, speed
    //gettimeofday(&tv_new, NULL);
    //int time_delta = (tv_new.tv_sec - tv_old.tv_sec)*1000000 + (tv_new.tv_usec - tv_old.tv_usec);
    //float size = ((void *)pos - (void *)buf)*1.0/1024/1024;
    //float rate = size*1024*1024/time_delta;
    //tv_old = tv_new;
    //printf(" time %dus size %.2fMB rate %.2fMB/s\n", time_delta, size, rate);

    sum = sum + (unsigned long)(pos - buf1);
    printf("%.2fMB\n", sum*1.0/1024/1024);
    // switch buffer
    void * pos_old = pos;
    pos = buf1;
    //if (pos > buf2) {
    //    buf = pos = buf1;
    //} else {
    //    buf = pos = buf2;
    //}

    // write last position to the beginning of new buf
    //printf("1\n");
    *((unsigned long *)pos) = (unsigned long)pos_old;
    //printf("2\n");
    pos = pos + 2;
    *p2addr = pos;
    //printf("3\n");
    //printf("&addr=%p\n", p2addr);
    //printf("addr=%p\n", *p2addr);
}
*/

struct buffer buf1, buf2;
struct buffer *buf;

short * _StraightTaint_init (short ** ptrToAddr)
{
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
    printf("buffer 1: start %p end %p size %.1fMB\n", buf1.start, buf1.end, (buf1.end-buf1.start)*2.0/1024/1024);
    printf("buffer 2: start %p end %p size %.1fMB\n", buf2.start, buf2.end, (buf2.end-buf2.start)*2.0/1024/1024);

    pthread_t logger_thread;
    pthread_create(&logger_thread, NULL, _StraightTaint_logger_thread, NULL);
//    printf("&addr=%p\n", ptrToAddr);
//    printf("addr=%p\n", *ptrToAddr);
//
//    int shmid;
//    key_t key;
//    void *shm;
//    sem_t *s;
//
//    //We'll name our shared memory segment "5678".
//    key = 5678;
//    //create the segment.
//    if ((shmid = shmget(key, SHMSZ, 0666)) < 0) {
//        perror("shmget");
//        exit(1);
//    }
//    //attach the segment to address space
//    if ((shm = shmat(shmid, NULL, 0)) == (sem_t *) -1) {
//        perror("shmat");
//        exit(1);
//    }
//    // calculate base and boundary
//    void *base1,*base2,*boundary1,*boundary2;
//    base1 = shm + sizeof(sem_t) + sizeof(pid_t); // sem takes 16 size_t, pid_t takes 1 size_t
//    base2 = shm + SHMSZ/2;
//    boundary1 = base2 - 4096;
//    boundary2 = shm + SHMSZ -4096;
//    printf("base1: %p, boundary1: %p, size: %.2fMB\nbase2: %p, boundary2: %p, size: %.2fMB\n",
//        base1, boundary1, (boundary1-base1)*1.0/1024/1024, base2, boundary2, (boundary2-base2)*1.0/1024/1024);
//
//    // set last page to PROT_NONE to avoid overflow
//    if (mprotect((void *)boundary1, 4096 - 1, PROT_NONE)) {
//        perror("mprotect");
//        exit(1);
//    }
//    if (mprotect((void *)boundary2, 4096 - 1, PROT_NONE)) {
//        perror("mprotect");
//        exit(1);
//    }
//
//#ifdef DFT
//    //register SIGUSR1 handler
//    struct sigaction sa;
//    sa.sa_handler = buf_switcher;
//    sigaction(SIGUSR1, &sa, NULL);
//#endif
//
//    //write my pid to shm in order to let the consumer know
//    pid_t mypid = getpid();
//    printf("pid=%d\n", mypid);
//    *(pid_t *)(shm + sizeof(sem_t)) = mypid;
//
//    //init buf and pos
//    buf1 = (short *)base1;
//    buf2 = (short *)base2;
//    pos = buf = buf1;
//    p2addr = ptrToAddr;
//    printf("&addr=%p\n", p2addr);
//    printf("addr=%p\n", *p2addr);
//    
//    // tell consumer we are ready
//    s = (sem_t*)shm;
//    sem_post(s);
//
//    gettimeofday(&tv_old, NULL);
#else
    int pid = getpid();
    char filename[1024];
    snprintf(filename, 1024, "tmp.%d", pid);
    flog = fopen(filename, "w+");
    configFile=fopen("configFile","w+");
    fprintf(configFile,"%s\n",filename);
    fflush(configFile);
//    int pid=getpid(); 
    system("auditctl -D");
    char cmd[1024];
    snprintf(cmd,1024,"sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\0",pid);
    system(cmd);

#endif

    printf("init complete...\n");
    return buf->start;
}
