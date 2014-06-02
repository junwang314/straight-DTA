#include <stdio.h>
#include <assert.h>
#include <sys/types.h>
#include <unistd.h>
#define _GNU_SOURCE         /* See feature_test_macros(7) */
#include <sys/syscall.h>   /* For SYS_xxx definitions */

extern FILE *configFile; 
extern FILE *flog;

void _StraightTaint_pseudo()
{
}

void _StraightTaint_flush(short BBID)
{
    fflush(flog);
}

void _StraightTaint_log(short BBID)
{
    fprintf(flog, "%d\n", BBID);
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
