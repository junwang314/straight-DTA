#include <config.h>
#include "ftpd.h"

FILE* dbgfile;

int main(int argc, char *argv[])
{
    dbgfile=fopen("dbgfile.txt","w");
    fprintf(dbgfile,"~~~pid: %d main()\n",getpid());
    fflush(dbgfile);
//    printf("~~~main()\n");
    return pureftpd_start(argc, argv, NULL);
}
