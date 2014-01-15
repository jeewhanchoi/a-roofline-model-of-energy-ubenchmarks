#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>
#include <string.h>

#define TIMER_DESC "clock_gettime: POSIX high-resolution timer"


static
long double
timespec_to_ldbl (struct timespec x)
{
  return x.tv_sec + 1.0E-9 * x.tv_nsec;
}


static
long double
timespec_diff (struct timespec start, struct timespec finish)
{
  long double out;
  out = finish.tv_nsec - (double)start.tv_nsec;
  out *= 1.0E-9L;
  out += finish.tv_sec - (double)start.tv_sec;
  return out;
}


static
long double
timer_resolution (void)
{
  struct timespec x;
  clock_getres (CLOCK_REALTIME, &x);
  return timespec_to_ldbl (x);
}


static
void
get_time (struct timespec* x)
{
  clock_gettime (CLOCK_REALTIME, x);
}


struct stopwatch_t
{
  struct timespec t_start_;
  struct timespec t_stop_;
  int is_running_;
};


void
stopwatch_init (void)
{
  fprintf (stderr, "Timer: %s\n", TIMER_DESC);
  fprintf (stderr, "Timer resolution: %Lg\n", timer_resolution ());
  fflush (stderr);
}


void
stopwatch_start (struct stopwatch_t* T)
{
  assert (T);
  T->is_running_ = 1;
  get_time (&(T->t_start_));
}


long double
stopwatch_elapsed (struct stopwatch_t* T)
{
  long double dt = 0;
  if (T) {
    if (T->is_running_) {
      struct timespec t_cur;
      get_time (&t_cur);
      dt = timespec_diff (T->t_start_, t_cur);
    } else {
      dt = timespec_diff (T->t_start_, T->t_stop_);
    }
  }
  return dt;
}


long double
stopwatch_stop (struct stopwatch_t* T)
{
  if (T && T->is_running_) {
    get_time (&(T->t_stop_));
    T->is_running_ = 0;
  }
  return stopwatch_elapsed (T);
}

struct stopwatch_t *
stopwatch_create (void)
{
  struct stopwatch_t* new_timer =
    (struct stopwatch_t *)malloc (sizeof (struct stopwatch_t));
  if (new_timer)
    memset (new_timer, 0, sizeof (struct stopwatch_t));
  return new_timer;
}

void
stopwatch_destroy (struct stopwatch_t* T)
{
  if (T) {
    stopwatch_stop (T);
    free (T);
  }
}


