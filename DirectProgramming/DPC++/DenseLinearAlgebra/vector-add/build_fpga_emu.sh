#!/bin/bash

#PBS -l select=1:fpga_compile:ppn=2
#PBS -d .

hostname

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

make -f Makefile.fpga clean

echo
echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make fpga_emu -f Makefile.fpga

echo
echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

