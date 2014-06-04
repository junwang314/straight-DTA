#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <unistd.h>
#define _GNU_SOURCE         /* See feature_test_macros(7) */
#include <sys/syscall.h>   /* For SYS_xxx definitions */
#include <signal.h>
#include <assert.h>

#include "log.h"

extern short *addr;

extern FILE *configFile; 
extern FILE *flog;

extern struct buffer *buf;

void _StraightTaint_pseudo()
{
}

void _StraightTaint_flush(short BBID)
{
    fflush(flog);
}

struct buffer *queue = NULL;

void _StraightTaint_log(short BBID)
{
#ifdef HACK_LOG
    fprintf(flog, "%d\n", BBID);
#else
    //fprintf(flog, "%d\n", BBID);
    *addr = BBID;
    addr++;
    if (addr != buf->end) {
        return;
    } else {
        //printf("post buf %p full\n", buf);
        sem_post(&(buf->full));
        //assert(queue == NULL);
        //queue = buf;
        // switch buffer
        //printf("switch buffer...\n");
        buf = buf->next;
        addr = buf->start;
        //printf("wait buf %p empty\n", buf);
        sem_wait(&(buf->empty));
        return;
    }
#endif
}

void *_StraightTaint_logger_thread(void *arg)
{
    sigset_t set;
    int s;
    sigfillset(&set);
    s = pthread_sigmask(SIG_SETMASK, &set, NULL);

    struct buffer *cur_buf = buf;
    for(;;) {
        //printf("logger wait buf %p empty\n", cur_buf);
        sem_wait(&(cur_buf->full));
        //write buffer to file
        //printf("write buffer to file...\n");
        //fprintf(flog, "buffer start %p end %p\n", cur_buf->start, cur_buf->end);
        fwrite(cur_buf->start, 1, BUF_SIZE, flog);
        fflush(flog);
        //printf("logger post buf %p empty\n", cur_buf);
        sem_post(&(cur_buf->empty));
        cur_buf = cur_buf->next;
    }
}

static inline void do_StraightTaint_fork(int pid)
{
    if (pid > 0) { //parent process
        //do nothing
    } else if (pid == 0) { //child process
        char filename[1024];
        int nrPid=syscall(__NR_getpid);
        snprintf(filename, 1024, "tmp.%d", nrPid);
        //record the log-file-name in configFile
        fprintf(configFile,"%s\n",filename);
        fflush(configFile);
        //run auditd for this new process
        char cmd[1024];
	snprintf(cmd,1024,"sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\0",nrPid);
        system(cmd);
        //copy parent log to child log
        FILE* flogParent=flog;
        flog = fopen(filename, "w+");
        rewind(flogParent);
        int bbid=0;
        int size;
        fflush(flog);
        fflush(flogParent);
        while(EOF!=fscanf(flogParent,"%d",&bbid)){
            //		printf("bbid: %d\n",bbid);
            fprintf(flog,"%d\n",bbid);
        }
        fclose(flogParent);
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
