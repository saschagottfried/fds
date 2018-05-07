#!/usr/bin/env sh
wget https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.1.tar.gz -q -O /tmp/openmpi-3.0.1.tar.gz
cd /tmp
gunzip -c /tmp/openmpi-3.0.1.tar.gz -q| tar xf -
cd /tmp/openmpi-3.0.1/
./configure FC=gfortran-7 CC=gcc-7 --enable-mpirun-prefix-by-default --enable-static --disable-shared --quiet && make -j 4 --quiet && sudo make install --quiet
