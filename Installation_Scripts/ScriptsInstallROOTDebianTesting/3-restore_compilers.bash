#!/bin_/bash

####
#### This script installs the prerequistes for ROOT in linux Debian tesing
#### You should run this script as root user calling it as
####
####  # bash 3-restore_compilers.bash
####
echo "Restoring default compilers"
update-alternatives --set gcc /usr/bin/gcc-5
update-alternatives --set g++ /usr/bin/g++-5
update-alternatives --set gfortran /usr/bin/gfortran-5
echo "GNU compilers set"
echo "If this fails you can do a manual configuration calling"
echo " update-alternatives --config _name_of_compiler_"
echo "As root user"
