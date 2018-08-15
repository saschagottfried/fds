#!/usr/bin/env sh

# install build-essential
sudo apt-get update
sudo apt-get install build-essential software-properties-common git -qy

# install gfortran 7.X
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -qq
sudo apt-get install gfortran-7 --no-install-recommends -qy

# compile Open MPI 3.X
wget -nv -N https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.2.tar.gz -q
gunzip -c openmpi-3.0.2.tar.gz -q | tar -xf -
cd openmpi-3.0.2
./configure FC=gfortran-7 CC=gcc-7 --prefix=/opt/openmpi-3.0.2 --enable-mpirun-prefix-by-default --enable-static --disable-shared --quiet && make -j 4 --quiet && sudo make install --quiet

# install Intel MKL from apt repository
# add apt repo line - inspired by https://www.spotify.com/de/download/linux/
wget -nv -N https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
sudo apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB -q
echo "deb https://apt.repos.intel.com/mkl all main" | sudo tee /etc/apt/sources.list.d/intel-mkl.list 
sudo apt-get update -qq
sudo apt-get install intel-mkl-64bit-2017.4-061 --no-install-recommends -qy
