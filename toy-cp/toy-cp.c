#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#define src "./src.txt"
#define dst "./dst.txt"

int cp(int i)
{
    char buf[4096];
	int fs = open(src, O_RDONLY);
	int fd = open(dst, O_WRONLY|O_CREAT, 0664);

	void * p = malloc(4096);
	void * q = malloc(4096);
	while(1) {
		ssize_t rc = read(fs, p, 4096);
		if (rc <= 0)
			break;
        memcpy(q, p, rc);
		write(fd, q, rc);
	}
    snprintf(buf, 8, "%d\n", i);
	write(fd, buf, 8);
	close(fs);
	close(fd);
	free(p);
    free(q);

	return 0;
}

int main(int argc, char **argv)
{
    int i, ret;
    for (i=0; i<100000; i++) {
        ret = cp(i);
    }
    printf("exit...\n");
    exit(0);
    return 0;
}
