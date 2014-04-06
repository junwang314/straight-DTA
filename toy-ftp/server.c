#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
//#include <iostream>
#include <assert.h>
#include <sys/wait.h>

//using namespace std;
#define src "./src.txt"
void myListen()
{
  printf("Parent pid is: %d\n",getpid());
  int listenfd = 0,connfd = 0;
  struct sockaddr_in serv_addr;
  listenfd = socket(AF_INET, SOCK_STREAM, 0);
  printf("socket retrieve success\n");
  memset(&serv_addr, '0', sizeof(serv_addr));
 
  serv_addr.sin_family = AF_INET;    
  serv_addr.sin_addr.s_addr = htonl(INADDR_ANY); 
  serv_addr.sin_port = htons(5000);    
  bind(listenfd, (struct sockaddr*)&serv_addr,sizeof(serv_addr));
  if(listen(listenfd, 10) == -1){
    printf("Failed to listen\n");
    assert(0);
  }
  printf("begin listen...\n");
  int i;
  for(i=0;i<2;i++)
  {
    printf("loop...\n");
    connfd = accept(listenfd, (struct sockaddr*)NULL ,NULL); // accept awaiting request
    printf("socket accept\n");
    printf("connfd: %d\n",connfd);
    int pid, status;

    pid=fork();
    if(pid<0)
    {
      assert(0);
    }
    else if(pid==0)
    {
      printf("This is child process. pid: %d\n",pid);        

      int newfdin=dup2(connfd,0);
      printf("newfdin: %d\n",newfdin);
      printf("connfd: %d\n",connfd);
      close(connfd);  
      close(listenfd);
      return;
    }
    else
    {
      if((pid=wait(&status))==-1)
      {
        printf("wait failed\n");
      }
      else
      {
        if(WIFEXITED(status)!=0)
        {
          close(connfd);
          printf("This is parent process. child pid is : %d\n",pid);                
        }
        else
        {
          printf("Child process ends unexpectedly\n");
        }
      }
      sleep(1);
    }
  }
  close(listenfd);
  exit(0);  
}
int main(void)
{
  printf("main()\n");
  myListen();
  char recvBuff[1025];
  int recvnum=recv(0, recvBuff, 1025,0);
  assert(recvnum!=0);
  printf("recvnum: %d\n",recvnum);
  sleep(1);
  write(1, recvBuff, strlen(recvBuff)); 
  int pid=getpid();
  assert(pid>0);
  char pidstr[6];
  snprintf(pidstr,6,"%d",pid);
  char filename[30];
  strcpy(filename,"log_");
  strcat(filename,pidstr);
  FILE * fs=fopen(filename,"w");
  ssize_t rc=fwrite(recvBuff,1,1025,fs); 
  fclose(fs);  
}

