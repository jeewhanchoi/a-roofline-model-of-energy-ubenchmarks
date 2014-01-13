# CUDA Install Path 
CUDA_INSTALL_PATH ?= /usr/local/cuda-5.0

# CUDA SDK Install Path
CUDA_SDK_INSTALL_PATH ?= $(HOME)/NVIDIA_GPU_Computing_SDK

# NVCC 
NVCC := $(CUDA_INSTALL_PATH)/bin/nvcc 

# Includes
INCLUDES += -I$(CUDA_INSTALL_PATH)/include -I$(CUDA_SDK_INSTALL_PATH)/C/common/inc

# Flags
# Set the appropriate flags for the given architecture (compute_XX) and 
# 	code (sm_XX)
NVCCFLAGS += -gencode arch=compute_20,code=sm_20 --ptxas-options=-v 


# Libraries
CUDALIB += -lcuda
CUDALIB += -lcudart

# SDK Libraries
CUDASDKLIB += -lcutil

NVCCLIBS += -L$(CUDA_INSTALL_PATH)/lib64 $(CUDALIB) -L$(CUDA_SDK_INSTALL_PATH)/C/lib $(CUDASDKLIB)



# computeIlp : compute ubenchmark
# bandwidthIlp: bandwidth ubenchmark
# intensityIlp: intensity ubenchmark
# cachetest: L2 cache test ubenchmark
# smtest : shared memory test ubenchmark
# gpurand: random access test ubenchmark
TARGETS += compute
TARGETS += bandwidthIlp
TARGETS += intensity
TARGETS += cachetest
TARGETS += smtest
#TARGETS += gpurand


# default data type is double-precision (double)
DTYPE = -DTYPE=double -DCONST=0.01 -DONE=1.0 -DTWO=2.0 -DZERO=0.0

# single-precision (float) data type
ifeq ($(TYPE),float)
	DTYPE = -DTYPE=float -DCONST=0.01f -DONE=1.0f -DTWO=2.0f -DZERO=0.0f
endif

# float4 data type
ifeq ($(TYPE),float4)
	DTYPE = -DTYPE=float4 -DCONST=0.01f -DONE=1.0f -DTWO=2.0f -DZERO=0.0f
endif

all: $(TARGETS)

# ===========================================================================
COMPUTE_SOURCES = jeecomputebench.cu compute_kernel.cu
COMPUTE_OBJECTS = $(COMPUTE_SOURCES:.cu=.o)

compute: $(COMPUTE_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(COMPUTE_OBJECTS) -o $@
# ===========================================================================

# ===========================================================================
BANDWIDTHILP_SOURCES = jeebandwidthilpbench.cu bandwidthilp_kernel2.cu
BANDWIDTHILP_OBJECTS = $(BANDWIDTHILP_SOURCES:.cu=.o)

bandwidthIlp: $(BANDWIDTHILP_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(BANDWIDTHILP_OBJECTS) -o $@
# ===========================================================================

# ===========================================================================
INTENSITY_SOURCES = jeemaxbench.cu py.intensity_kernel.cu
INTENSITY_OBJECTS = $(INTENSITY_SOURCES:.cu=.o)

intensity: $(INTENSITY_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(INTENSITY_OBJECTS) -o $@
# ===========================================================================

# ===========================================================================
CACHETEST_SOURCES = jeecachetest.cu cache_kernel.cu 
CACHETEST_OBJECTS = $(CACHETEST_SOURCES:.cu=.o)

cachetest: $(CACHETEST_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(CACHETEST_OBJECTS) -o $@  
# ===========================================================================




# ===========================================================================
SMTEST_SOURCES = jeesmtest.cu sm_kernel.cu 
SMTEST_OBJECTS = $(SMTEST_SOURCES:.cu=.o)

smtest: $(SMTEST_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(SMTEST_OBJECTS) -o $@
# ===========================================================================

# ===========================================================================
GPURANDTEST_SOURCES = jeerandmem.cu pm_lib_cuda.cu
GPURANDTEST_OBJECTS = $(GPURANDTEST_SOURCES:.cu=.o)

gpurand: $(GPURANDTEST_OBJECTS)
	$(NVCC) $(NVCCLIBS) $(GPURANDTEST_OBJECTS) -o $@ 
# ===========================================================================



%.o: %.cu
	$(NVCC) $(NVCCFLAGS) $(DTYPE) $(DPOWER) $(DNUM_ITER) $(DBS) $(INCLUDES) -o $@ -c $< -Xcompiler -fopenmp -lgomp 


clean: 
	rm -rf *.o $(TARGETS) *.log

