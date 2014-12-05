#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
typedef struct fdnode{
	int fd;
}fdnode;

typedef struct event{
	fdnode** fdarray;
}event;

typedef struct server{
	event* ev;
}server;

fdnode* fdnode_init(){
	void* tmp=malloc(sizeof(fdnode));
	return (fdnode*)tmp;
}

void fdevent_register(event* ev, int fd){
	fdnode* newNode=fdnode_init();
	newNode->fd=fd;
	ev->fdarray[fd]=newNode;
}

void connection_accept(event* ev, int i){
	char filename[30];
	sprintf(filename, "srcfile%d\0",i);
	int fd=open(filename, O_RDONLY);
	fdevent_register(ev, fd);
}

int main(){
	server* srv=(server*)malloc(sizeof(server));
	srv->ev=(event*)malloc(sizeof(event));
	srv->ev->fdarray=(fdnode**)malloc(sizeof(fdnode*)*128);
	for(int i=0; i<128; i++){
		srv->ev->fdarray[i]=NULL;
	}

	for(int i=0; i<3; i++){
		connection_accept(srv->ev, i);
	}


	for(int i=0; i<128; i++){
		fdnode* tmp=srv->ev->fdarray[i];
		if(tmp){
			char outfilename[30];
			sprintf(outfilename, "outfile%d\0", i);
			int fd=open(outfilename, O_WRONLY | O_CREAT);

			int infd=tmp->fd;
			char buf[64];
			read(infd, buf, 2);
			write(fd, buf, 2);
			close(infd);
			close(fd);
		}
	}
	return 0;
}
