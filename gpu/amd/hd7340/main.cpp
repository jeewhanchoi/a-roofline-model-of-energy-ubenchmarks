#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifndef _WIN32
	#include <unistd.h>
	#include <sys/types.h>
	#include <sys/stat.h>
#endif
#include <string>
#include <stdio.h>
#include <stdint.h>
#include <CL/cl.h>
#include "timer.h"

#define PROCESS_BY_4_ELEMENTS

// const size_t array_size = 1024*1024*16;
size_t array_size;

float *hostData = NULL;
float *hostData_ = NULL;
cl_device_id device = NULL;
cl_uint numDevices = 0;
cl_platform_id platform = NULL;
cl_command_queue commandQueue = NULL;
cl_context ctx = NULL;
cl_mem inputBuffer = NULL;
cl_mem inputBuffer_ = NULL;
cl_mem outputBuffer = NULL;
cl_mem outputBuffer_ = NULL;
cl_kernel kernel = NULL;
cl_program program = NULL;

void initHost() {
	::hostData = (cl_float*)malloc(sizeof(cl_float)*array_size);
	// ::hostData_ = (cl_float*)malloc(sizeof(cl_float)*array_size/4);

	for (size_t i = 0; i < array_size; i++) {
		hostData[i] = float(i);
	}
	/*	
	for (size_t i = 0; i < array_size/4; i++) {
		hostData[i] = float(i);
	}
	 */

}

void initCLPlatform() {
	cl_int status;
	cl_uint numberOfPlatforms;


	status = clGetPlatformIDs(1, &platform, &numberOfPlatforms);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformIDs failed with error: %d\n", status);
		exit(status);
	}

	status = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, &numDevices);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceIDs failed with error %d\n", status);
		exit(status);
	}

	::ctx = clCreateContext(0, 1, &::device, NULL, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateContext failed with error %d\n", status);
		exit(status);
	}

	::commandQueue = clCreateCommandQueue(::ctx, ::device, CL_QUEUE_PROFILING_ENABLE, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateCommandQueue failed with error %d\n", status);
		exit(status);
	}

}

void initCLPlatform__() {
	cl_int status;
	cl_uint numberOfPlatforms;

	status = clGetPlatformIDs(1, &platform, &numberOfPlatforms);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformIDs failed with error: %d\n", status);
		exit(status);
	}

	const size_t platformProfileMax = 1024;
	char platformProfile[platformProfileMax];
	status = clGetPlatformInfo(platform, CL_PLATFORM_PROFILE, platformProfileMax, platformProfile, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_PLATFORM_PROFILE: %s\n", platformProfile);
	}

	const size_t platformVersionMax = 1024;
	char platformVersion[platformVersionMax];
	status = clGetPlatformInfo(platform, CL_PLATFORM_VERSION, platformVersionMax, platformVersion, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_PLATFORM_VERSION: %s\n", platformVersion);
	}

	const size_t platformVendorMax = 1024;
	char platformVendor[platformVendorMax];
	status = clGetPlatformInfo(platform, CL_PLATFORM_VENDOR, platformVendorMax, platformVendor, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_PLATFORM_VENDOR: %s\n", platformVendor);
	}

	const size_t platformNameMax = 1024;
	char platformName[platformNameMax];
	status = clGetPlatformInfo(platform, CL_PLATFORM_NAME, platformNameMax, platformName, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_PLATFORM_NAME: %s\n", platformName);
	}

	const size_t platformExtensionsMax = 1024;
	char platformExtensions[platformExtensionsMax];
	status = clGetPlatformInfo(platform, CL_PLATFORM_EXTENSIONS, platformExtensionsMax, platformExtensions, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetPlatformInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_PLATFORM_EXTENSIONS: %s\n", platformExtensions);
	}

	status = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, &numDevices);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceIDs failed with error %d\n", status);
		exit(status);
	}

	printf("\n");

	const size_t deviceNameMax = 1024;
	char deviceName[deviceNameMax];
	status = clGetDeviceInfo(device, CL_DEVICE_NAME, deviceNameMax, deviceName, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_NAME: %s\n", deviceName);
	}

	const size_t extensionsMax = 4096;
	char extensions[extensionsMax];
	status = clGetDeviceInfo(device, CL_DEVICE_EXTENSIONS, extensionsMax, extensions, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_EXTENSIONS: %s\n", extensions);
	}

	cl_bool compilerAvailable;
	status = clGetDeviceInfo(device, CL_DEVICE_COMPILER_AVAILABLE, sizeof(cl_bool), &compilerAvailable, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_COMPILER_AVAILABLE: %s\n", (compilerAvailable == CL_TRUE) ? "CL_TRUE" : "CL_FALSE");
	}

	const size_t deviceOpenCLCVersionMax = 1024;
	char deviceOpenCLCVersion[deviceOpenCLCVersionMax];
	status = clGetDeviceInfo(device, CL_DEVICE_OPENCL_C_VERSION, deviceOpenCLCVersionMax, deviceOpenCLCVersion, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_OPENCL_C_VERSION: %s\n", deviceOpenCLCVersion);
	}

	cl_uint preferedByteVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR, sizeof(cl_uint), &preferedByteVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR: %u\n", preferedByteVectorWidth);
	}

	cl_uint preferedShoftVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT, sizeof(cl_uint), &preferedShoftVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT: %u\n", preferedShoftVectorWidth);
	}

	cl_uint preferedIntVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT, sizeof(cl_uint), &preferedIntVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT: %u\n", preferedIntVectorWidth);
	}

	cl_uint preferedLongVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG, sizeof(cl_uint), &preferedLongVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG: %u\n", preferedLongVectorWidth);
	}

	cl_uint preferedHalfVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF, sizeof(cl_uint), &preferedHalfVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF: %u\n", preferedHalfVectorWidth);
	}

	cl_uint preferedFloatVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT, sizeof(cl_uint), &preferedFloatVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT: %u\n", preferedFloatVectorWidth);
	}

	cl_uint preferedDoubleVectorWidth;
	status = clGetDeviceInfo(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE, sizeof(cl_uint), &preferedDoubleVectorWidth, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE: %u\n", preferedDoubleVectorWidth);
	}

	//~ cl_device_fp_config half_config;
	//~ status = clGetDeviceInfo(device, CL_DEVICE_HALF_FP_CONFIG, sizeof(cl_device_fp_config), &half_config, 0);
	//~ if (status != CL_SUCCESS) {
		//~ fprintf(stderr, "clGetDeviceInfo (CL_DEVICE_HALF_FP_CONFIG) failed with error %d\n", status);
	//~ } else {
		//~ printf("CL_DEVICE_HALF_FP_CONFIG:\n");
		//~ printf("\tCL_FP_DENORM: %s\n", (half_config & CL_FP_DENORM) ? "Yes" : "No");
		//~ printf("\tCL_FP_INF_NAN: %s\n", (half_config & CL_FP_INF_NAN) ? "Yes" : "No");
		//~ printf("\tCL_FP_ROUND_TO_NEAREST: %s\n", (half_config & CL_FP_ROUND_TO_NEAREST) ? "Yes" : "No");
		//~ printf("\tCL_FP_ROUND_TO_ZERO: %s\n", (half_config & CL_FP_ROUND_TO_ZERO) ? "Yes" : "No");
		//~ printf("\tCL_FP_ROUND_TO_INF: %s\n", (half_config & CL_FP_ROUND_TO_INF) ? "Yes" : "No");
		//~ printf("\tCL_FP_FMA: %s\n", (half_config & CL_FP_FMA) ? "Yes" : "No");
		//~ printf("\tCL_FP_SOFT_FLOAT: %s\n", (half_config & CL_FP_SOFT_FLOAT) ? "Yes" : "No");
	//~ }

	cl_device_fp_config float_config;
	status = clGetDeviceInfo(device, CL_DEVICE_SINGLE_FP_CONFIG, sizeof(cl_device_fp_config), &float_config, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo (CL_DEVICE_SINGLE_FP_CONFIG) failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_SINGLE_FP_CONFIG:\n");
		printf("\tCL_FP_DENORM: %s\n", (float_config & CL_FP_DENORM) ? "Yes" : "No");
		printf("\tCL_FP_INF_NAN: %s\n", (float_config & CL_FP_INF_NAN) ? "Yes" : "No");
		printf("\tCL_FP_ROUND_TO_NEAREST: %s\n", (float_config & CL_FP_ROUND_TO_NEAREST) ? "Yes" : "No");
		printf("\tCL_FP_ROUND_TO_ZERO: %s\n", (float_config & CL_FP_ROUND_TO_ZERO) ? "Yes" : "No");
		printf("\tCL_FP_ROUND_TO_INF: %s\n", (float_config & CL_FP_ROUND_TO_INF) ? "Yes" : "No");
		printf("\tCL_FP_FMA: %s\n", (float_config & CL_FP_FMA) ? "Yes" : "No");
		printf("\tCL_FP_SOFT_FLOAT: %s\n", (float_config & CL_FP_SOFT_FLOAT) ? "Yes" : "No");
	}

	cl_uint device_address_bits;
	status = clGetDeviceInfo(device, CL_DEVICE_ADDRESS_BITS, sizeof(cl_uint), &device_address_bits, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_ADDRESS_BITS: %u\n", device_address_bits);
	}

	cl_ulong device_local_mem_size;
	status = clGetDeviceInfo(device, CL_DEVICE_LOCAL_MEM_SIZE, sizeof(cl_ulong), &device_local_mem_size, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_LOCAL_MEM_SIZE: %llu\n", (unsigned long long)(device_local_mem_size));
	}

	cl_device_local_mem_type device_local_mem_type;
	status = clGetDeviceInfo(device, CL_DEVICE_LOCAL_MEM_TYPE, sizeof(cl_device_local_mem_type), &device_local_mem_type, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		switch (device_local_mem_type) {
			case CL_LOCAL:
				printf("CL_DEVICE_LOCAL_MEM_TYPE: CL_LOCAL\n"); break;
			case CL_GLOBAL:
				printf("CL_DEVICE_LOCAL_MEM_TYPE: CL_GLOBAL\n"); break;
			default:
				printf("CL_DEVICE_LOCAL_MEM_TYPE: %u\n", device_local_mem_type); break;
		}
	}

	cl_ulong global_mem_cache_size;
	status = clGetDeviceInfo(device, CL_DEVICE_GLOBAL_MEM_CACHE_SIZE, sizeof(cl_ulong), &global_mem_cache_size, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_GLOBAL_MEM_CACHE_SIZE: %llu\n", (unsigned long long)global_mem_cache_size);
	}

	cl_device_mem_cache_type device_global_mem_cache_type;
	status = clGetDeviceInfo(device, CL_DEVICE_GLOBAL_MEM_CACHE_TYPE, sizeof(cl_device_mem_cache_type), &device_global_mem_cache_type, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		switch (device_global_mem_cache_type) {
			case CL_NONE:
				printf("CL_DEVICE_GLOBAL_MEM_CACHE_TYPE: CL_NONE\n"); break;
			case CL_READ_ONLY_CACHE:
				printf("CL_DEVICE_GLOBAL_MEM_CACHE_TYPE: CL_READ_ONLY_CACHE\n"); break;
			case CL_READ_WRITE_CACHE:
				printf("CL_DEVICE_GLOBAL_MEM_CACHE_TYPE: CL_READ_WRITE_CACHE\n"); break;
			default:
				printf("CL_DEVICE_GLOBAL_MEM_CACHE_TYPE: %u\n", device_global_mem_cache_type); break;
		}
	}

	cl_uint device_global_mem_cacheline_size;
	status = clGetDeviceInfo(device, CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE, sizeof(cl_uint), &device_global_mem_cacheline_size, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE: %u\n", device_global_mem_cacheline_size);
	}

	cl_ulong device_global_mem_size;
	status = clGetDeviceInfo(device, CL_DEVICE_GLOBAL_MEM_SIZE, sizeof(cl_ulong), &device_global_mem_size, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_GLOBAL_MEM_SIZE: %llu\n", (unsigned long long)device_global_mem_size);
	}

	cl_bool device_host_unified_memory;
	status = clGetDeviceInfo(device, CL_DEVICE_HOST_UNIFIED_MEMORY, sizeof(cl_bool), &device_host_unified_memory, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_HOST_UNIFIED_MEMORY: %s\n", (device_host_unified_memory == CL_TRUE) ? "CL_TRUE" : "CL_FALSE");
	}

	cl_uint device_max_clock_frequency;
	status = clGetDeviceInfo(device, CL_DEVICE_MAX_CLOCK_FREQUENCY, sizeof(cl_uint), &device_max_clock_frequency, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_MAX_CLOCK_FREQUENCY: %u\n", device_max_clock_frequency);
	}

	cl_uint device_max_compute_units;
	status = clGetDeviceInfo(device, CL_DEVICE_MAX_COMPUTE_UNITS, sizeof(cl_uint), &device_max_compute_units, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetDeviceInfo failed with error %d\n", status);
		exit(status);
	} else {
		printf("CL_DEVICE_MAX_COMPUTE_UNITS: %u\n", device_max_compute_units);
	}

	::ctx = clCreateContext(0, 1, &::device, NULL, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateContext failed with error %d\n", status);
		exit(status);
	}

	::commandQueue = clCreateCommandQueue(::ctx, ::device, CL_QUEUE_PROFILING_ENABLE, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateCommandQueue failed with error %d\n", status);
		exit(status);
	}
}

void initCLBuffer() {
	cl_int status;

	::inputBuffer = clCreateBuffer(::ctx, CL_MEM_READ_WRITE, sizeof(cl_float) * array_size, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}

	/*
	::inputBuffer_ = clCreateBuffer(::ctx, CL_MEM_READ_ONLY, sizeof(cl_float) * array_size/4, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}
	 */

	::outputBuffer = clCreateBuffer(::ctx, CL_MEM_READ_WRITE, sizeof(cl_float) * array_size, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}

	/*
	::outputBuffer_ = clCreateBuffer(::ctx, CL_MEM_WRITE_ONLY, sizeof(cl_float) * array_size/4, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}
	 */
}

void initCLKernel(int multiplyAdds) {
	cl_int status;

	std::string source = "__kernel void CLBench(__global float *input, __global float *output) {\n"
	                     "	uint id = get_global_id(0);\n"
#if defined(PROCESS_BY_16_ELEMENTS)
	                     "	float16 y = 0.0f;\n"
	                     "	float16 x = vload16(id, input);\n";
#elif defined(PROCESS_BY_8_ELEMENTS)
	                     "	float8 y = 0.0f;\n"
	                     "	float8 x = vload8(id, input);\n";
#elif defined(PROCESS_BY_4_ELEMENTS)
	                     "	float4 y = 0.0f;\n"
	                     "	float y_ = 0.0f;\n"
	                     "	float4 x = vload4(id, input);\n"
	                     "	float x_ = x.x * x.x;\n";
	                     // "	float x_ = input_[id];\n";
#elif defined(PROCESS_BY_2_ELEMENTS)
	                     "	float2 y = 0.0f;\n"
	                     "	float2 x = vload2(id, input);\n";
#else
	                     "	float y = 0.0f;\n"
	                     "	float x = input[id];\n";
#endif
	for (int i = 0; i < multiplyAdds; i++) {
#if defined(PROCESS_BY_16_ELEMENTS)
		source.append("	y = mad(x, x, y);\n");
#elif defined(PROCESS_BY_8_ELEMENTS)
		source.append("	y = mad(x, x, y);\n");
#elif defined(PROCESS_BY_4_ELEMENTS)
		source.append("	y = mad(x, x, y);\n");
		source.append("	y_ = mad(x_, x_, y_);\n");
#elif defined(PROCESS_BY_2_ELEMENTS)
		source.append("	y = mad(x, x, y);\n");
#else
		source.append("	y = mad(x, x, y);\n");
#endif
	}
#if defined(PROCESS_BY_16_ELEMENTS)
	source.append("	vstore16(y, id, output);\n");
#elif defined(PROCESS_BY_8_ELEMENTS)
	source.append("	vstore8(y, id, output);\n");
#elif defined(PROCESS_BY_4_ELEMENTS)
	source.append("	y.x = y.x + y_;\n");
	source.append("	vstore4(y, id, output);\n");
	// source.append("	output_[id] = y_;\n");
#elif defined(PROCESS_BY_2_ELEMENTS)
	source.append("	vstore2(y, id, output);\n");
#else
	source.append("	output[id] = y;\n");
#endif
	source.append("}\n\n");

	/* This is UB, may crash on the next line */
	const char* sourceBuffer = source.c_str();
	// fprintf (stderr, "%s", sourceBuffer);
	::program = clCreateProgramWithSource(::ctx, 1, &sourceBuffer, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateProgramWithSource failed with error %d\n", status);
		exit(status);
	}

	status = clBuildProgram(::program, 0, NULL, "-cl-fast-relaxed-math -cl-mad-enable", NULL, NULL);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clBuildProgram failed with error %d %d\n", status, CL_BUILD_PROGRAM_FAILURE);

		exit(status);
	}

	::kernel = clCreateKernel(::program, "CLBench", &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateKernel failed with error %d\n", status);
		exit(status);
	}
}

void runCL(int multiplyAdds) {
	cl_int status;
	cl_event writeEvent;
	cl_event computeEvent;

	status = clSetKernelArg(::kernel, 0, sizeof(cl_mem), &inputBuffer);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}

	/*
	status = clSetKernelArg(::kernel, 1, sizeof(cl_mem), &inputBuffer_);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}
	 */

	status = clSetKernelArg(::kernel, 1, sizeof(cl_mem), &outputBuffer);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}

	/*
	status = clSetKernelArg(::kernel, 3, sizeof(cl_mem), &outputBuffer_);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}
	 */

	status = clEnqueueWriteBuffer(::commandQueue, inputBuffer, CL_FALSE, 0, sizeof(cl_float) * array_size, hostData, 0, NULL, &writeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueWriteBuffer failed with error %d\n", status);
		exit(status);
	}


	/*
	status = clEnqueueWriteBuffer(::commandQueue, inputBuffer_, CL_FALSE, 0, sizeof(cl_float) * array_size/4, hostData_, 0, NULL, &writeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueWriteBuffer failed with error %d\n", status);
		exit(status);
	}
	 */

	//~ for (int i = 0; i < 3; i++) {
		//~ status = clEnqueueNDRangeKernel(::commandQueue, ::kernel, 1, 0, globalWorkSize, NULL, 1, &writeEvent, NULL);
		//~ if (status != CL_SUCCESS) {
			//~ fprintf(stderr, "clEnqueueNDRangeKernel failed with error %d\n", status);
			//~ exit(status);
		//~ }
	//~ }

	// transfer data
	// clFlush(::commandQueue);
	clFinish(::commandQueue);

	sleep (2);
#if defined(PROCESS_BY_16_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 16, 0, 0};
#elif defined(PROCESS_BY_8_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 8, 0, 0};
#elif defined(PROCESS_BY_4_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 4, 0, 0};
	size_t localWorkSize[3] = {256, 0, 0};
#elif defined(PROCESS_BY_2_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 2, 0, 0};
#else
	size_t globalWorkSize[3] = {array_size, 0, 0};
#endif

	/*
	status = clEnqueueNDRangeKernel(::commandQueue, ::kernel, 1, 0, globalWorkSize, NULL, 1, &writeEvent, &computeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueNDRangeKernel failed with error %d %d\n", status, CL_OUT_OF_RESOURCES);
		exit(status);
	}
	 */
	status = clEnqueueNDRangeKernel(::commandQueue, ::kernel, 1, 0, globalWorkSize, localWorkSize, 1, &writeEvent, &computeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueNDRangeKernel failed with error %d %d\n", status, CL_OUT_OF_RESOURCES);
		exit(status);
	}

	
	struct stopwatch_t * timer = NULL;
	long double t_start, t_end;

	stopwatch_init ();
	timer = stopwatch_create ();
	stopwatch_start (timer);
	// execute kernel
	// clFlush(::commandQueue);
	clFinish(::commandQueue);
	t_end = stopwatch_elapsed (timer);
	fprintf (stderr, "Execution time: %Lg secs\n", t_end);

	cl_ulong timeStart, timeEnd, timeQueued, timeSubmitted;
	status = clGetEventProfilingInfo(computeEvent, CL_PROFILING_COMMAND_QUEUED, sizeof(cl_ulong), &timeQueued, NULL);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", status);
	}
	status = clGetEventProfilingInfo(computeEvent, CL_PROFILING_COMMAND_SUBMIT, sizeof(cl_ulong), &timeSubmitted, NULL);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", status);
	}
	status = clGetEventProfilingInfo(computeEvent, CL_PROFILING_COMMAND_START, sizeof(cl_ulong), &timeStart, NULL);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", status);
	}
	status = clGetEventProfilingInfo(computeEvent, CL_PROFILING_COMMAND_END, sizeof(cl_ulong), &timeEnd, NULL);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", status);
	}

	printf("Computed(queued-finish) in %5.3lf msecs\n", double(timeEnd - timeQueued) / 1.0e+6);
	printf("Computed(submit-finish) in %5.3lf msecs\n", double(timeEnd - timeSubmitted) / 1.0e+6);
	printf("Computed(start-finish) in %5.3lf msecs\n", double(timeEnd - timeStart) / 1.0e+6);
	printf("\tPerformance: %5.3lf GFLOPS\n", double(2.0 * (double(array_size) * 1.25 * double(multiplyAdds) / 1.0e+9) / (double(timeEnd - timeStart) / 1.0e+9)));
	printf("\tPerformance: %5.3lf GB/s\n", (2.0 * array_size * sizeof (cl_float)) / double((timeEnd - timeStart)));

	printf("Computed in %5.3Lg secs\n", t_end);
	printf("\tPerformance: %5.3lf GFLOPS\n", double(2.0 * (double(array_size) * 1.25 * double(multiplyAdds) / 1.0e+9) / t_end));
	printf("\tPerformance: %5.3Lg GB/s\n", ((2.0 * array_size * sizeof (cl_float))/1.0e+9) / t_end);

	clReleaseEvent(writeEvent);
	clReleaseEvent(computeEvent);
}

void verify(int multiplyAdds) {
	cl_int status = CL_FALSE;
	cl_float* hostOutput = (cl_float*)malloc(sizeof(cl_float) * array_size);
	cl_float* hostOutput_ = (cl_float*)malloc(sizeof(cl_float) * array_size/4);

	status = clEnqueueReadBuffer(::commandQueue, ::outputBuffer, CL_TRUE, 0, sizeof(cl_float) * array_size, hostOutput, 0, NULL, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueReadBuffer failed with error %d\n", status);
		exit(status);
	}

	/*
	status = clEnqueueReadBuffer(::commandQueue, ::outputBuffer_, CL_TRUE, 0, sizeof(cl_float) * array_size/4, hostOutput_, 0, NULL, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueReadBuffer failed with error %d\n", status);
		exit(status);
	}
	 */

	size_t countDiff = 0;
	for (size_t i = 0; i < array_size; i++) {
		if (i % 4 != 0) {
			if (fabsf(hostData[i] * hostData[i] * float(multiplyAdds) - hostOutput[i]) > 1.0e-4 * hostOutput[i]) {
				countDiff++;
			}
		} else {
			if (fabsf(hostData[i] * hostData[i] * float(multiplyAdds) + hostData[i]*hostData[i] * hostData[i]*hostData[i] * float(multiplyAdds) - hostOutput[i]) > 1.0e-4 * hostOutput[i]) 			{
				countDiff++;
			}
		}
	}
	/*
	for (size_t i = 0; i < array_size/4; i++) {
		if (fabsf(hostData_[i] * hostData_[i] * float(multiplyAdds) - hostOutput_[i]) > 1.0e-4 * hostOutput_[i]) {
			countDiff++;
		}
	}
	 */

	if (countDiff != 0) {
		fprintf(stderr, "Output verification failed: num of mismatch: %zu\n", countDiff);
	}

	free(hostOutput);
}

void cleanupCL() {
	free(hostData);

	clReleaseMemObject(::inputBuffer);
	clReleaseMemObject(::outputBuffer);
	clReleaseKernel(::kernel);
	clReleaseProgram(::program);
	clReleaseCommandQueue(::commandQueue);
	clReleaseContext(::ctx);
}

int main(int argc, char** argv) {

	int multiplyAdds;

	if(argc != 3) {
		fprintf (stderr, "usage: %s <array size (M)> <# MAD>\n", argv[0]);	
		exit (0);
	} else {
		array_size = atoi (argv[1]) * 1024 * 1024;
		multiplyAdds = atoi (argv[2]);
	}

	// initialize array
	initHost();
	// initialize the device
	initCLPlatform();
	// allocate device memory
	initCLBuffer();
	// create and build kernel
	initCLKernel(multiplyAdds);
	// run the kernel
	runCL(multiplyAdds);
	// verify results
	verify(multiplyAdds);
	// free memory
	cleanupCL();

	return 0;
}
