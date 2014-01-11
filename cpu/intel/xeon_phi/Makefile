# N controls the flop-to-byte ratio
# Refer to the README file for more information
ifndef N
  N=0
endif

# Choose between sp and dp for single and double precision code
ifndef PRECISION
  #PRECISION = sp
  PRECISION = dp
endif

EXEC = bench${PRECISION}${N}
CC = icpc
SRC = bench.c common.c
OBJS := $(addsuffix .o, $(basename $(SRC)))
CFLAGS = -O3 -Wall
INC = -I./ -I/opt/intel/sep/include/
LIBS =

CFLAGS += -D_RATIO_=${N}
CFLAGS += -opt-prefetch=0
CFLAGS += -mmic -openmp -fasm-blocks  -funroll-loops

ifeq "${PRECISION}" "sp"
  CFLAGS += -D_PRECISION_=1
else
  CFLAGS += -D_PRECISION_=2
endif

all: $(EXEC)

$(EXEC): $(OBJS) Makefile
	$(CC) ${CFLAGS} $(OBJS) -o $(EXEC) ${LIBS}
#	scp $(EXEC) mic1:~/bench/

%.o : %.c Makefile
	$(CC) ${CFLAGS} ${INC} -S $< -o $<.s
	$(CC) ${CFLAGS} ${INC} -c $< -o $@ 

clean:
	rm -f *.o *.s *.d *~ $(EXEC)
