#!/bin/bash
#  Compile the program with G++
module load gcc
g++ -fopenmp hello_world_openmp.cpp -lm -o hello_world_openmp

#  Run the program with  varying number of threads.
echo "Executing with 1 thread:"
export OMP_NUM_THREADS=1
./hello_world_openmp

echo "Executing with 2 threads:"
export OMP_NUM_THREADS=2
./hello_world_openmp

echo "Executing with 4 threads:"
export OMP_NUM_THREADS=4
./hello_world_openmp

echo "Executing with 8 threads:"
export OMP_NUM_THREADS=8
./hello_world_openmp

echo "Executing with 16 threads:"
export OMP_NUM_THREADS=16
./hello_world_openmp

