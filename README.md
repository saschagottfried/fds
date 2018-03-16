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

- Clone the repo
- Install Vagrant and VirtualBox

```
$ vagrant up
```

- [Detailled build instructions](vagrant.md)

