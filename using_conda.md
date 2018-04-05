# Use conda for build environments

Use conda for build environments
- [Use compiler packages](https://conda.io/docs/user-guide/tasks/build-packages/compiler-tools.html)


### Install OpenMPI 
- https://anaconda.org/conda-forge/openmpi

	$ conda install -c conda-forge openmpi 

### Install GFortran 7.2 Compiler
- https://anaconda.org/anaconda/gfortran_linux-64

	$ conda install -c anaconda gfortran_linux-64


### Using conda compiler packages

Many build tools such as make and cmake search by default for a compiler named simply gcc, so we set environment variables to point these tools to the correct compiler.

You can activate the root environment with the command `source activate root`.



# Use conda for runtime environments

Gnu Fortran runtime
- https://anaconda.org/anaconda/libgfortran-ng

	$ conda install -c anaconda libgfortran-ng


Intel MKL
- https://anaconda.org/intel/mkl

	$ conda install -c intel mkl

Intel MPI library
- https://anaconda.org/intel/impi_rt

	$ conda install -c intel impi_rt

Intel OpenMP
- https://anaconda.org/intel/openmp




# Use conda-forge

A community led collection of recipes, build infrastructure and distributions for the conda package manager.

https://conda-forge.org





