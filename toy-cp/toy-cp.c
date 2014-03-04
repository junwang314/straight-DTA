#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define src "./src.txt"
#define dst "./dst.txt"

int main(int argc, char **argv)
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
	close(fs);
	close(fd);
	free(p);
	return 0;
}
