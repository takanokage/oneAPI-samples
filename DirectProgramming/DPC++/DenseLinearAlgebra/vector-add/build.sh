#!/bin/bash

#PBS -l select=1:gpu:ppn=2
#PBS -d .

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

hostname
echo

make clean
echo

echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make all
echo

make build_usm
echo

echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

