# fds-smv

[![Build Status](https://travis-ci.org/saschagottfried/fds.svg?branch=master)](https://travis-ci.org/saschagottfried/fds)

Fire Dynamics Simulator and Smokeview

*Continuous Integration. Continuous Improvement.*

Fire Dynamics Simulator ([FDS](https://github.com/firemodels/fds)) is a large-eddy simulation (LES) code for low-speed flows, with an emphasis on smoke and heat transport from fires.

Smokeview ([SMV](https://github.com/firemodels/smv)) is a visualization program used to display the output of FDS and [CFAST](https://github.com/firemodels/cfast) simulations.

# Contribution
For more information, including a link to our discussion forum, please visit the [FDS-SMV website](https://pages.nist.gov/fds-smv/).

Pull requests welcome! 
Pull requests are build with [Travis CI](https://travis-ci.org/saschagottfried/fds) using GNU Fortran and Open MPI to [address project contribution guidelines](https://github.com/firemodels/fds/wiki/Developer-Commit-Guidelines#when-should-i-submit-a-pull-request) and to provide a continuous integration workflow available for contributors outside of NIST. Notice the build tag (green/red) on top of the page.

# Build status
Here is a link to our [Firebot Build Status](https://pages.nist.gov/fds-smv/firebot_status.html).

# Build instruction for Linux OS

Install software
- Vagrant and VirtualBox
 
Clone the repo 

    $ git clone https://github.com/firemodels/fds.git

Fire up Vagrant box

```bash
$ cd fds
$ vagrant up
```

When Vagrant provisioner, connect to box.

Connect to Vagrant box

    $ vagrant ssh


#### Build FDS 

Compile FDS with GNU/OMPI toolchain with MKL environment for Intel 64 architecture

    $ source /opt/intel/mkl/bin/mklvars.sh intel64
    $ source /vagrant/open-mpi-vars.sh
    $ cd /vagrant/Build/mpi_gnu_linux_64
    $ ./make_fds.sh

# Run FDS case

After building FDS you can connect to Vagrant box an run a FDS file

```bash
$ /vagrant/Build/mpi_gnu_linux_64/fds_mpi_gnu_linux_64 simple_glmat.fds
  
 Using GLMAT as pressure solver. List of H unknown numbers per proc:
 MYID=       0, NUNKH_LOCAL=    2100

 Fire Dynamics Simulator

 Current Date     : March 15, 2018  16:57:47
 Revision         : FDS6.6.0-1079-g91c42d3-master
 Revision Date    : Wed Feb 14 16:02:36 2018 +0100
 Compiler         : unknown
 Compilation Date : Mar 15, 2018  14:43:09

 MPI Enabled;    Number of MPI Processes:       1
 OpenMP Enabled; Number of OpenMP Threads:      4

 MPI version: 3.1
 MPI library version: Open MPI v3.0.0, package: Open MPI root@vagrant Distribution, ident: 3.0.0, repo rev: v3.0.0, Sep 12, 2017

 Job TITLE        : Compart_Test
 Job ID string    : glmat

 Time Step:      1, Simulation Time:      0.16 s
 Time Step:      2, Simulation Time:      0.32 s
 Time Step:      3, Simulation Time:      0.47 s
 Time Step:      4, Simulation Time:      0.63 s
 Time Step:      5, Simulation Time:      0.79 s
```

## Detailled build instruction

The workflow outlined above in a concise way is explained in detail as well.

- [Detailled build instructions](vagrant.md)