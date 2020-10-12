#!/bin/bash

#PBS -l select=1:fpga:ppn=2
#PBS -d .

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

hostname
echo

echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make run_hw -f Makefile.fpga
echo

echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

