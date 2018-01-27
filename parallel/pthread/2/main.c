#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define NUM_THREADS 3
#define TCOUNT 10
#define COUNT_LIMIT 12

int count = 0;
int thread_ids[3] = { 0, 1, 2 };
pthread_mutex_t count_mutex;
pthread_cond_t count_threadhold_cv;

void* inc_count(void* t)
{
  int i;
  long my_id = (long)t;

  for (i = 0; i < TCOUNT; ++i) {
    pthread_mutex_lock(&count_mutex);
    count++;
    if (count == COUNT_LIMIT) {
      pthread_cond_signal(&count_threadhold_cv);
      printf("inc_count(): thread %ld, count = %d Threadhold reached.\n", my_id, count);

    }
  }
  return 0
}
