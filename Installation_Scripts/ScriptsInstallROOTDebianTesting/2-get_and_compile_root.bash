#!/bin_/bash

####
#### This script compiles ROOT in linux Debian tesing
#### You should run this calling it as
####
####  # bash 2-get_and_compile_root.bash
####

## The path were root will be compiled
## Change this if you want
root_build=root_build

## The number of Threads for the build process
if [ -z "$1" ]; then
	number_of_threads=2
	echo "No argument supplied, setting number of threads as $number_of_threads for make."
else
	number_of_threads=$1
	echo "Setting number of threads as $number_of_threads for make."
fi

## Get the master of the main repo at CERN
## This creates the dir 'root'
git clone http://root.cern.ch/git/root.git

## Create a dir to build ROOT in there
mkdir $root_build
cd $root_build

## prepare environment to build and compile ROOT
cmake ../root -Dr=ON -Dpython=ON

## Compile this shit
make -j $number_of_threads

## Source binaries and all
source bin/thisroot.sh 

## Change default compilers system wide. This is temporal
echo "ROOT compilation terminated!!"
echo "Run the script 'restore_compilers.sh' as root user to restore default compilers from 4.9 to 5 versions"
