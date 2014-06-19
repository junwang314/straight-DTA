#ifndef _LOG_H
#define _LOG_H

#include <semaphore.h>

#define _HACK_LOG
#define BUF_SIZE 500*1024*1024 //100MB
//#define BUF_SIZE 512 //1KB


struct buffer {
    short *start;
    short *end;
    short *cursor;
    int size;
    sem_t full;
    sem_t empty;
    struct buffer *next;
};

extern void *_StraightTaint_logger_thread(void *);
extern void _StraightTaint_logger_thread_terminate(void);

#endif
