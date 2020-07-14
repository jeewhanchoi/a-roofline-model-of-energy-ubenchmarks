/*
MIT License
Copyright 2020 Jee W. Choi, Marat Dukhan, and Xing Liu
Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in 
the Software without restriction, including without limitation the rights to use, 
copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the 
Software, and to permit persons to whom the Software is furnished to do so, subject 
to the following conditions:
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#include "common.h"


// global variables
int g_balancer;
int g_m;
int g_n;
int g_nnz;
fptype_t *g_x;
int *g_partition;
fptype_t *g_y;
pthread_mutex_t *g_lock_y;
TreeBarrier tbarrier;
char g_filename[1024];
double g_cpufreq;
__int64 mytime[MAXTHREADS * 8];
char *g_isgprefetch;
int g_nqueue;
int g_ntasksperqueue;


void initvec (fptype_t * v, int size, fptype_t initval)
{
    int i;
    if (initval < 0.0)
    {
        for (i = 0; i < size; i++)
        {
            v[i] = (double)(i % 10000) / 10000;
            // TODO: improve random generator
            // v[i] = RAND01 ();
        }
    }
    else
    {
        for (i = 0; i < size; i++)
        {
            v[i] = initval;
        }
    }
}


void initomp (int nthreads, int verbose)
{
    char schedule[1024];

    if (verbose == 1)
    {
        sprintf (schedule,
                 "KMP_AFFINITY=granularity=fine,compact,verbose");
    }
    else
    {
        sprintf (schedule,
                 "KMP_AFFINITY=granularity=fine,compact");
    }
    kmp_set_defaults (schedule);
    omp_set_num_threads (nthreads);
}


__attribute__((noinline)) void trace1()
{
    printf ("HERE\n");
}


__attribute__((noinline)) void trace2()
{
    printf ("HERE\n");
}


__attribute__((noinline)) void trace3()
{
    printf ("HERE\n");
}


void KNC_printVint (__m512i reg, __mmask16 mask, char *regname)
{
    __declspec (align (64)) int tmp1_[16];
    int i;
    for (i = 0; i < 16; i++)
    {
        tmp1_[i] = 0;
    }
    _mm512_mask_store_epi32 (tmp1_, mask, reg);
    printf ("%s(INT):\n", regname);
    for (i = 0; i < 16; i++)
    {
        printf ("%d ", tmp1_[i]);
    }
    printf ("\n");

}


void KNC_printVfp (__m512 reg, __mmask16 mask, char *regname)
{
    __declspec (align (64)) fptype_t tmp1_[16];
    int i;
    for (i = 0; i < 16; i++)
        tmp1_[i] = -1.0;
    _mm512_mask_store_ps (tmp1_, mask, reg);
    printf ("%s(SP):\n", regname);
    for (i = 0; i < 16; i++)
    {
        printf ("%.3lf ", tmp1_[i]);
    }
    printf ("\n\n");

}


void KNC_printVdp (__m512d reg, __mmask8 mask, char *regname)
{
    int i;
    __declspec (align (64)) double tmp1_[16];
    for (i = 0; i < 16; i++)
        tmp1_[i] = -1.0;
   _mm512_mask_store_pd (tmp1_, mask, reg);
    printf ("%s(DP):\n", regname);
    for (i = 0; i < 8; i++)
    {
        printf ("%.3lf ", tmp1_[i]);
    }
    printf ("\n\n");

}
