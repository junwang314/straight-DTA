#include <stdio.h>
#include <assert.h>
#include <sys/types.h>
#include <unistd.h>
#define _GNU_SOURCE         /* See feature_test_macros(7) */
#include <sys/syscall.h>   /* For SYS_xxx definitions */


extern FILE *flog;
	
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
        flog = fopen(filename, "w");
	fseek(flogParent,0,SEEK_SET);
	char buf[1024];
	size_t size;
	while(size=fread(buf,1,1024,flogParent)){
		printf("size read: %d\n",size);
		fwrite(buf,1,size,flog);
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
