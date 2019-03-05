#!/bin/bash



date=$( date +%s%3N )
proc=$( cat /proc/stat | grep cpu$1 )
echo $proc $date

ssh vm@192.168.122.242 './getproc.sh primes 0'

date +%s%3N
cat /proc/stat | grep cpu$1
