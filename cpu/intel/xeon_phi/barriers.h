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

#ifndef BARRIER_H
#define BARRIER_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
// #include <lmmintrin.h>
#include <assert.h>


//////////////// barrier

#define DELAY {asm __volatile__ ("delay %[cycle]" :: [cycle] "r" (10));}


#define PAD (16)
typedef struct
{
    volatile __declspec (align (4096)) unsigned _SIMPLE_BARRIER_TURN_[256 *
                                                                      PAD];
    volatile __declspec (align (4096)) unsigned _SIMPLE_BARRIER_FLAG_0;
    volatile __declspec (align (4096)) unsigned _SIMPLE_BARRIER_COUNT_0[256];
    volatile __declspec (align (4096)) unsigned _SIMPLE_BARRIER_FLAG_1;
    volatile __declspec (align (4096)) unsigned _SIMPLE_BARRIER_COUNT_1[256];
} SIMPLE_BARRIER_TYPE;

inline void
SIMPLE_BARRIER_INIT (SIMPLE_BARRIER_TYPE * SIMPLE_BARRIER)
{
    SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_0 = 0;
    SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_1 = 0;
    int i;
    for (i = 0; i < 256; i++)
    {
        SIMPLE_BARRIER->_SIMPLE_BARRIER_TURN_[i * PAD] = 0;
        SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_0[i] = 0;
        SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_1[i] = 0;
    }
}

inline void
SIMPLE_BARRIER (SIMPLE_BARRIER_TYPE * SIMPLE_BARRIER, int ID, int MAX)
{
    if (SIMPLE_BARRIER->_SIMPLE_BARRIER_TURN_[ID * PAD] == 0)
    {
        SIMPLE_BARRIER->_SIMPLE_BARRIER_TURN_[ID * PAD] = 1;
        if (ID == 0)
        {
            int i;
            for (i = 1; i < MAX; i++)
            {
                while (SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_0[i] == 0)
                    DELAY;
                SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_1[i] = 0;
            }
            SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_1 = 0;
            SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_0 = 1;
        }
        else
        {
            SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_0[ID] = 1;
            while (SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_0 == 0)
                DELAY;
        }
    }
    else
    {
        SIMPLE_BARRIER->_SIMPLE_BARRIER_TURN_[ID * PAD] = 0;
        if (ID == 0)
        {
            int i;
            for (i = 1; i < MAX; i++)
            {
                while (SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_1[i] == 0)
                    DELAY;
                SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_0[i] = 0;
            }
            SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_0 = 0;
            SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_1 = 1;
        }
        else
        {
            SIMPLE_BARRIER->_SIMPLE_BARRIER_COUNT_1[ID] = 1;
            while (SIMPLE_BARRIER->_SIMPLE_BARRIER_FLAG_1 == 0)
                DELAY;
        }
    }
}

#undef PAD


#define PAD (16)
#define GROUP (4)
typedef struct
{
    volatile __declspec (align (4096)) unsigned _TREE_BARRIER_TURN_[256 *
                                                                    PAD];
    volatile __declspec (align (4096)) unsigned _TREE_BARRIER_FLAG_0[4][256 *
                                                                        PAD];
    volatile __declspec (align (4096)) unsigned _TREE_BARRIER_COUNT_0[4][256 *
                                                                         PAD];
    volatile __declspec (align (4096)) unsigned _TREE_BARRIER_FLAG_1[4][256 *
                                                                        PAD];
    volatile __declspec (align (4096)) unsigned _TREE_BARRIER_COUNT_1[4][256 *
                                                                         PAD];
} TREE_BARRIER_TYPE;

inline void
TREE_BARRIER_INIT (TREE_BARRIER_TYPE * TREE_BARRIER)
{
    int i;
    for (i = 0; i < 256; i++)
    {
        TREE_BARRIER->_TREE_BARRIER_TURN_[i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_0[0][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_0[1][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_0[2][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_0[3][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_0[0][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_0[1][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_0[2][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_0[3][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_1[0][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_1[1][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_1[2][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_FLAG_1[3][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_1[0][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_1[1][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_1[2][i * PAD] = 0;
        TREE_BARRIER->_TREE_BARRIER_COUNT_1[3][i * PAD] = 0;
    }
}

inline void
TREE_BARRIER (TREE_BARRIER_TYPE * TREE_BARRIER, int ID, int MAX)
{
    if (TREE_BARRIER->_TREE_BARRIER_TURN_[ID * PAD] == 0)
    {
        TREE_BARRIER->_TREE_BARRIER_TURN_[ID * PAD] = 1;
        int LEVEL = 0;
        int STRIDE = 1;
        int MASK = GROUP - 1;
        while (1)
        {
            int WAITER = ID & MASK;
            int SUBSET = ID & (~MASK);
            if (WAITER)
            {
                TREE_BARRIER->_TREE_BARRIER_COUNT_0[LEVEL][ID * PAD] = 1;
                while (TREE_BARRIER->
                       _TREE_BARRIER_FLAG_0[LEVEL][SUBSET * PAD] == 0)
                    DELAY;
                while (LEVEL > 0)
                {
                    LEVEL--;
                    TREE_BARRIER->_TREE_BARRIER_FLAG_1[LEVEL][ID * PAD] = 0;
                    TREE_BARRIER->_TREE_BARRIER_FLAG_0[LEVEL][ID * PAD] = 1;
                }
                break;
            }
            else
            {
                int CHILD = ID + STRIDE, SET;
                for (SET = 1; (SET < GROUP) && (CHILD < MAX); SET++)
                {
                    while (TREE_BARRIER->
                           _TREE_BARRIER_COUNT_0[LEVEL][CHILD * PAD] == 0)
                        DELAY;
                    TREE_BARRIER->_TREE_BARRIER_COUNT_1[LEVEL][CHILD * PAD] =
                        0;
                    CHILD += STRIDE;
                }

                LEVEL++;
                STRIDE *= GROUP;
                MASK *= GROUP;
                if (STRIDE >= MAX)
                {
                    while (LEVEL > 0)
                    {
                        LEVEL--;
                        TREE_BARRIER->_TREE_BARRIER_FLAG_1[LEVEL][ID * PAD] =
                            0;
                        TREE_BARRIER->_TREE_BARRIER_FLAG_0[LEVEL][ID * PAD] =
                            1;
                    }
                    break;
                }
            }
        }
    }
    else
    {
        TREE_BARRIER->_TREE_BARRIER_TURN_[ID * PAD] = 0;
        int LEVEL = 0;
        int STRIDE = 1;
        int MASK = GROUP - 1;
        while (1)
        {
            int WAITER = ID & MASK;
            int SUBSET = ID & (~MASK);
            if (WAITER)
            {
                TREE_BARRIER->_TREE_BARRIER_COUNT_1[LEVEL][ID * PAD] = 1;
                while (TREE_BARRIER->
                       _TREE_BARRIER_FLAG_1[LEVEL][SUBSET * PAD] == 0)
                    DELAY;
                while (LEVEL > 0)
                {
                    LEVEL--;
                    TREE_BARRIER->_TREE_BARRIER_FLAG_0[LEVEL][ID * PAD] = 0;
                    TREE_BARRIER->_TREE_BARRIER_FLAG_1[LEVEL][ID * PAD] = 1;
                }
                break;
            }
            else
            {
                int CHILD = ID + STRIDE, SET;
                for (SET = 1; (SET < GROUP) && (CHILD < MAX); SET++)
                {
                    while (TREE_BARRIER->
                           _TREE_BARRIER_COUNT_1[LEVEL][CHILD * PAD] == 0)
                        DELAY;
                    TREE_BARRIER->_TREE_BARRIER_COUNT_0[LEVEL][CHILD * PAD] =
                        0;
                    CHILD += STRIDE;
                }

                LEVEL++;
                STRIDE *= GROUP;
                MASK *= GROUP;
                if (STRIDE >= MAX)
                {
                    while (LEVEL > 0)
                    {
                        LEVEL--;
                        TREE_BARRIER->_TREE_BARRIER_FLAG_0[LEVEL][ID * PAD] =
                            0;
                        TREE_BARRIER->_TREE_BARRIER_FLAG_1[LEVEL][ID * PAD] =
                            1;
                    }
                    break;
                }
            }
        }
    }
}

#undef PAD
#undef GROUP


#define PAD (16)
typedef struct
{
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_TURN_[256 *
                                                                    PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_FLAG_0[4][256 *
                                                                        PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_COUNT_0[4][256 *
                                                                         PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_FLAG_1[4][256 *
                                                                        PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_COUNT_1[4][256 *
                                                                         PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_MASTER_[4][256 *
                                                                         PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_SET_[4][256 *
                                                                      PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_STRIDE_[4][256 *
                                                                         PAD];
    volatile __declspec (align (4096)) unsigned _USER_BARRIER_MAX_[256 * PAD];
} USER_BARRIER_TYPE;

inline void
USER_BARRIER_INIT (USER_BARRIER_TYPE * USER_BARRIER, unsigned MAX)
{
    int i;
    for (i = 0; i < 256; i++)
    {
        USER_BARRIER->_USER_BARRIER_TURN_[i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_0[0][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_0[1][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_0[2][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_0[3][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_0[0][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_0[1][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_0[2][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_0[3][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_1[0][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_1[1][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_1[2][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_FLAG_1[3][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_1[0][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_1[1][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_1[2][i * PAD] = 0;
        USER_BARRIER->_USER_BARRIER_COUNT_1[3][i * PAD] = 0;
    }

    USER_BARRIER->_USER_BARRIER_MASTER_[0][0 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][1 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][2 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][3 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][4 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][5 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][6 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][7 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][8 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][9 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][10 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][11 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][12 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][13 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][14 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][15 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][16 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][17 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][18 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][19 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][20 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][21 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][22 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_MASTER_[0][23 * PAD] = 12;

    USER_BARRIER->_USER_BARRIER_MASTER_[1][0 * PAD] = 0;
    USER_BARRIER->_USER_BARRIER_MASTER_[1][12 * PAD] = 0;

    USER_BARRIER->_USER_BARRIER_SET_[0][0 * PAD] = 12;
    USER_BARRIER->_USER_BARRIER_SET_[0][12 * PAD] = 12;

    USER_BARRIER->_USER_BARRIER_SET_[1][0 * PAD] = 2;

    USER_BARRIER->_USER_BARRIER_STRIDE_[0][0 * PAD] = 1;
    USER_BARRIER->_USER_BARRIER_STRIDE_[0][12 * PAD] = 1;

    USER_BARRIER->_USER_BARRIER_STRIDE_[1][0 * PAD] = 12;

    int max;
    if (MAX <= 12)
        max = 1;
    else if (MAX <= 24)
        max = 2;
    else
    {
        printf ("Thread Max Number Error: %d\n", MAX);
        exit (-1);
    }
    for (i = 0; i < 256; i++)
        USER_BARRIER->_USER_BARRIER_MAX_[i * PAD] = max;
}

inline void
USER_BARRIER (USER_BARRIER_TYPE * USER_BARRIER, int ID, int MAX)
{
    if (USER_BARRIER->_USER_BARRIER_TURN_[ID * PAD] == 0)
    {
        USER_BARRIER->_USER_BARRIER_TURN_[ID * PAD] = 1;
        int LEVEL = 0;
        while (1)
        {
            int MASTER = USER_BARRIER->_USER_BARRIER_MASTER_[LEVEL][ID * PAD];
            if (ID != MASTER)
            {
                USER_BARRIER->_USER_BARRIER_COUNT_0[LEVEL][ID * PAD] = 1;
                while (USER_BARRIER->
                       _USER_BARRIER_FLAG_0[LEVEL][MASTER * PAD] == 0)
                    DELAY;
                while (LEVEL > 0)
                {
                    LEVEL--;
                    USER_BARRIER->_USER_BARRIER_FLAG_1[LEVEL][ID * PAD] = 0;
                    USER_BARRIER->_USER_BARRIER_FLAG_0[LEVEL][ID * PAD] = 1;
                }
                break;
            }
            else
            {
                int CHILD =
                    ID + USER_BARRIER->_USER_BARRIER_STRIDE_[LEVEL][ID * PAD],
                    SET;
                for (SET = 1;
                     (SET < USER_BARRIER->_USER_BARRIER_SET_[LEVEL][ID * PAD])
                     && (CHILD < MAX); SET++)
                {
                    while (USER_BARRIER->
                           _USER_BARRIER_COUNT_0[LEVEL][CHILD * PAD] == 0)
                        DELAY;
                    USER_BARRIER->_USER_BARRIER_COUNT_1[LEVEL][CHILD * PAD] =
                        0;
                    CHILD +=
                        USER_BARRIER->_USER_BARRIER_STRIDE_[LEVEL][ID * PAD];
                }

                LEVEL++;
                if (LEVEL == USER_BARRIER->_USER_BARRIER_MAX_[ID * PAD])
                {
                    while (LEVEL > 0)
                    {
                        LEVEL--;
                        USER_BARRIER->_USER_BARRIER_FLAG_1[LEVEL][ID * PAD] =
                            0;
                        USER_BARRIER->_USER_BARRIER_FLAG_0[LEVEL][ID * PAD] =
                            1;
                    }
                    break;
                }
            }
        }
    }
    else
    {
        USER_BARRIER->_USER_BARRIER_TURN_[ID * PAD] = 0;
        int LEVEL = 0;
        while (1)
        {
            int MASTER = USER_BARRIER->_USER_BARRIER_MASTER_[LEVEL][ID * PAD];
            if (ID != MASTER)
            {
                USER_BARRIER->_USER_BARRIER_COUNT_1[LEVEL][ID * PAD] = 1;
                while (USER_BARRIER->
                       _USER_BARRIER_FLAG_1[LEVEL][MASTER * PAD] == 0)
                    DELAY;
                while (LEVEL > 0)
                {
                    LEVEL--;
                    USER_BARRIER->_USER_BARRIER_FLAG_0[LEVEL][ID * PAD] = 0;
                    USER_BARRIER->_USER_BARRIER_FLAG_1[LEVEL][ID * PAD] = 1;
                }
                break;
            }
            else
            {
                int CHILD =
                    ID + USER_BARRIER->_USER_BARRIER_STRIDE_[LEVEL][ID * PAD],
                    SET;
                for (SET = 1;
                     (SET < USER_BARRIER->_USER_BARRIER_SET_[LEVEL][ID * PAD])
                     && (CHILD < MAX); SET++)
                {
                    while (USER_BARRIER->
                           _USER_BARRIER_COUNT_1[LEVEL][CHILD * PAD] == 0)
                        DELAY;
                    USER_BARRIER->_USER_BARRIER_COUNT_0[LEVEL][CHILD * PAD] =
                        0;
                    CHILD +=
                        USER_BARRIER->_USER_BARRIER_STRIDE_[LEVEL][ID * PAD];
                }
                LEVEL++;
                if (LEVEL == USER_BARRIER->_USER_BARRIER_MAX_[ID * PAD])
                {
                    while (LEVEL > 0)
                    {
                        LEVEL--;
                        USER_BARRIER->_USER_BARRIER_FLAG_0[LEVEL][ID * PAD] =
                            0;
                        USER_BARRIER->_USER_BARRIER_FLAG_1[LEVEL][ID * PAD] =
                            1;
                    }
                    break;
                }
            }
        }
    }
}

#undef PAD

// TREE_BARRIER_TYPE tree_barrier;
class TreeBarrier
{
    TREE_BARRIER_TYPE tree_barrier;
    int nthreads;

  public:
    void Init ()
    {

        TREE_BARRIER_INIT (&tree_barrier);
    }
    void Init (int nthreads)
    {
        this->nthreads = nthreads;
        TREE_BARRIER_INIT (&tree_barrier);
    }
    TreeBarrier ()
    {
        Init ();
    }
    TreeBarrier (int nthreads)
    {
        Init (nthreads);
    }
    void Wait (int tid)
    {
        TREE_BARRIER (&tree_barrier, tid, nthreads);
    }
    void Wait (int tid, int nth)
    {
        TREE_BARRIER (&tree_barrier, tid, nth);
    }

    ~TreeBarrier ()
    {
    };
};

#endif
