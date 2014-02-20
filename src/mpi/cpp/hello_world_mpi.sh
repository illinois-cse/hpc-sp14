#!/bin/bash
rm ./hello_world_mpi

#  Compile the program with MPI wrapper for G++
module load gcc
module load mvapich2
mpicxx hello_world_mpi.cpp -lm -o hello_world_mpi

#  Run the program with  varying number of threads.
echo "Executing with 1 thread:"
mpiexec -np 1 ./hello_world_mpi

echo "Executing with 2 threads:"
mpiexec -np 2 ./hello_world_mpi

echo "Executing with 4 threads:"
mpiexec -np 4 ./hello_world_mpi

echo "Executing with 8 threads:"
mpiexec -np 8 ./hello_world_mpi

echo "Executing with 16 threads:"
mpiexec -np 16 ./hello_world_mpi

