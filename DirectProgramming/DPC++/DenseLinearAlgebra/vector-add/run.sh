#!/bin/bash

hostname

source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1

echo
echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

make run

echo
echo stop:  $(date "+%y%m%d.%H%M%S.%3N")
echo

