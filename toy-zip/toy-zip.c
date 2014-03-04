#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define src "./src.txt"
#define dst "./dst"

int add(int a, int b)
{
	int sum;
	sum = a + b;
    printf("sum:%d, a:%d, b:%d\n", sum, a, b);
    if (sum > 10)
	    return sum;
    add(sum, a);
}

int compress(int *p)
{
	int a = *p;
	int b = *(p+1);
	add(1, 2);
    return *p;
}

int testFunc(){
    int a = 1;
    int b = 2;
    int c;
    c = a + b;
    return 0;
}

int main(int argc, char **argv)
{
	int fs = open(src, O_RDONLY);
	int fd = open(dst, O_WRONLY|O_CREAT, 0664);

	void * p = malloc(8);
	ssize_t rc = read(fs, p, 8);
	if (rc <= 0)
		return -1;
	else
	{
		int result = compress((int *)p);
		write(fd, &result, 4);
	}
	close(fs);
	close(fd);
	free(p);
    int ret = testFunc();
	return 0;
}
