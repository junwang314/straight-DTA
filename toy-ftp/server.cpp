#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <iostream>
#include <assert.h>
#include <sys/wait.h>

using namespace std;
#define src "./src.txt"
void myListen()
{
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
  for(int i=0;i<2;i++)
  {
    printf("loop...\n");
    connfd = accept(listenfd, (struct sockaddr*)NULL ,NULL); // accept awaiting request
    printf("socket accept\n");
    cout<<"connfd: "<<connfd<<"\n";
    int pid, status;

    pid=fork();
    if(pid<0)
    {
      assert(0);
    }
    else if(pid==0)
    {
      cout<<"This is child process. pid: "<<pid<<"\n";        

      int newfdin=dup2(connfd,0);
      cout<<"newfdin: "<<newfdin<<"\n";
      cout<<"connfd: "<<connfd<<"\n";
      close(connfd);  
      close(listenfd);
      return;
    }
    else
    {
      if((pid=wait(&status))==-1)
      {
        cout<<"wait failed\n";
      }
      else
      {
        if(WIFEXITED(status)!=0)
        {
          close(connfd);
          cout<<"This is parent process. child pid is : "<<pid<<"\n";                
        }
        else
        {
          cout<<"Child process ends unexpectedly\n";
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
  myListen();
  char recvBuff[1025];
  int recvnum=recv(0, recvBuff, 1025,0);
  assert(recvnum!=0);
  cout<<"recvnum: "<<recvnum<<"\n";
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
