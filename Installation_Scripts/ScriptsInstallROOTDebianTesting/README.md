# Scripts to Install ROOT in Debian testing

## Version and tests
This was tested the 02 April 2016. It is the first version

## Short Instructions  
Run the scripts in the following order,   
   
* Run `bash 1-get_root_prerequisites.bash` as root user.     
* As regular user or root user (I did it as simple user) execute `bash 2-get_and_compile_root.bash N` where `N` Is the number of threads you want on the make file.
The argument is optional, if no N is given the script sets `N=2`. This step takes time, it compiles ROOT.    
* Run the script `bash 3-restore_compilers.bash` as root user.    


## Details
* The scripts are configured to work with Python 3. You can comment and uncomment some lines in the script `1-get_root_prerequisites.bash` to use the old Python 2.7 standard.   
* The scripts update the repositories and install the prerequistes to install ROOT. Nothing additional should be made
since the idea is to automate the whole process. Feel free to edit the scripts according to your needs.   
* The scripts might not work since we are pulling the mater branch of the ROOT repository.   
