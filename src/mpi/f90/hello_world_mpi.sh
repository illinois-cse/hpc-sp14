#!/bin/bash
#  Compile the program with GFortran
module load gcc
module load mvapich2
rm -rf hello_world_mpi
mpif90 -fopenmp hello_world_mpi.f -o hello_world_mpi

#  Run the program with  varying number of threads.
echo "Executing with 1 thread:"
mpiexec -n 1 ./hello_world_mpi

echo "Executing with 2 threads:"
mpiexec -n 2 ./hello_world_mpi

echo "Executing with 4 threads:"
mpiexec -n 4 ./hello_world_mpi

echo "Executing with 8 threads:"
mpiexec -n 8 ./hello_world_mpi

echo "Executing with 16 threads:"
mpiexec -n 16 ./hello_world_mpi

