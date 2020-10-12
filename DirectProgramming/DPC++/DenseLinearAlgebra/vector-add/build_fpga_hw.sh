#!/bin/bash

#PBS -l select=1:fpga_compile:ppn=2
#PBS -l walltime=24:00:00
#PBS -d .

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

hostname
echo

make -f Makefile.fpga clean
echo

echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make hw -f Makefile.fpga
echo

echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

