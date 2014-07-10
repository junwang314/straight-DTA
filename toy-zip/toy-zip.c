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
    FILE * fs = fopen(src, "r");
    FILE * fd = fopen(dst, "w");

	void * p = malloc(8);
	ssize_t rc = fread(p, 1, 8, fs);
	if (rc <= 0)
		return -1;
	else
	{
		int result = compress((int *)p);
		fwrite(&result, 1, 4, fd);
	}
	fclose(fs);
	fclose(fd);
	free(p);
    int ret = testFunc();
	return 0;
}
