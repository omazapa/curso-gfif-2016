#!/bin_/bash

####
#### This script installs the prerequistes for ROOT in linux Debian tesing
#### You should run this script calling it as
####
####  # bash 1-get_root_prerequisites.bash
####

## Update packages info
apt-get update

## Install prerequisites

# This installs python-pip. Uncomment if you wanna use the old python2.7
#apt-get install cmake git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base r-base-dev python-pip 
# This installs python3-pip. Recommended to use the new standards for Python.
apt-get install cmake git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base r-base-dev python3-pip

# This installs 4.9 versions of the required compilers of the GNU Compilers Collection
apt-get install g++-4.9 g++-4.9-multilib gcc-4.9 gcc-4.9-multilib gfortran-4.9 gfortran-4.9-multilib

## Install python prerequisites Python 2.7
#pip install numpy matplotlib scipy jupyter ipython metakernel
#pip install scikit-learn

## Install python prerequisites Python 3
pip3 install numpy matplotlib scipy jupyter ipython metakernel
pip3 install scikit-learn

## Install R packages
R -e "install.packages(c('Rcpp','RInside','C50','xgboost','e1071','RSNNS'), repos='http://cran.us.r-project.org')" 

## Change the default compilers from version 5 to version 4.9.
## This changes the global compilers. You should run the script "restore_compilers.sh"
## To restore default values after ROOT is compiled
echo "Setting default compilers to use version 4.9"
echo "Run the script \'restore_compilers.sh\' as root user to restore default compilers from 4.9 to 5 versions"
# Set the options for prior use.
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 10
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 20
update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.9 10
update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-5 20
# Set the 4.9 versions
update-alternatives --set gcc /usr/bin/gcc-4.9
update-alternatives --set g++ /usr/bin/g++-4.9
update-alternatives --set gfortran /usr/bin/gfortran-4.9
