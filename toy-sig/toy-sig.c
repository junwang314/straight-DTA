#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <signal.h>

#define src "./src.txt"
#define dst "./dst.txt"

void handler(int sig)
{
    int x;
    x = sig;
    x++;
    return;
}

int main(int argc, char **argv)
{
    struct sigaction sa;
    memset(&sa, 0, sizeof(struct sigaction));
    sa.sa_handler = handler;
    sigaction(SIGALRM, &sa, NULL);

    char buf[4096];
	int fs = open(src, O_RDONLY);
	int fd = open(dst, O_WRONLY|O_CREAT, 0664);

    alarm(1);
    sleep(1);

	void * p = malloc(4096);
	void * q = malloc(4096);
	while(1) {
		ssize_t rc = read(fs, p, 4096);
		if (rc <= 0)
			break;
        memcpy(q, p, rc);
		write(fd, q, rc);
	}
    sleep(1);
	close(fs);
	close(fd);
	free(p);
	return 0;
}
