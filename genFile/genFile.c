#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(int argc, char** argv)
{
	if(argc<2)
	{
		printf("usage: genFile fileSize \n");
		exit(0);
	}
	int size=0;
	void* buf=malloc(1024*1024);
	memset(buf,'1',1024*1024);
	FILE* outF;
	for(int i=1; i<argc; i++)
	{
		char fName[30];
		size=atoi(argv[i]);
		sprintf(fName,"file_%dMB\0",size);
		printf("generat %s\n",fName);
		outF=fopen(fName,"w+");
		for(int j=0; j<size; j++)
		{
			fwrite(buf, 1024, 1024,outF);
		}
		fclose(outF);
	}
	return 1;
}

