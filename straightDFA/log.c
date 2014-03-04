#include <stdio.h>

extern FILE *flog;
	
void _StraightTaint_log(short BBID)
{
    fprintf(flog, "%d\n", BBID);
}
