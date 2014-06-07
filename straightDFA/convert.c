#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define BUF_SIZE 10*1024*1024

int main(int argc, char *argv[])
{
    void *buf = malloc(BUF_SIZE);
    FILE *f = fopen(argv[1], "r");
    if (f == NULL) {
        perror("failed to open file");
        exit(1);
    }
    char filename[1024];
    snprintf(filename, 1024, "%s.new", argv[1]);
    FILE *fnew = fopen(filename, "w+");
    if (fnew == NULL) {
        perror("failed to open file");
        exit(1);
    }
    for(;;) {
        int ret = fread(buf, 1, BUF_SIZE, f);
        if (ret == 0) {
            break;
        }
        short *p;
        for (p = (short *)buf; (char *)p < (char *)buf + ret; p++) {
            fprintf(fnew, "%d\n", *p);
        }
    }
    fclose(f);
    fclose(fnew);
    char cmd[1024];
    strcpy(cmd,"sudo mv ");
    strcat(cmd, argv[1]);
    strcat(cmd, filename);
    system(cmd);
    return 0;
}
