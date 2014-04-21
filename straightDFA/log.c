#include <stdio.h>
#include <assert.h>
#include <sys/types.h>
#include <unistd.h>
#define _GNU_SOURCE         /* See feature_test_macros(7) */
#include <sys/syscall.h>   /* For SYS_xxx definitions */


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
        snprintf(filename, 1024, "tmp.%d", syscall(__NR_getpid));
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
