#!/bin/bash

#PBS -l select=1:gpu:ppn=2
#PBS -d .

hostname

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

make clean

echo
echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make all

echo
echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

