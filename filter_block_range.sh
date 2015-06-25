#!/bin/bash

if [ $# != 3 ]; then
  echo "Usage: $0 <file> <start> <end>"
  exit -1
fi

file=`readlink -e $1`
if [[ $? != 0 || ! -f $file ]]; then
  echo "Error: $1 is not a file"
  exit -2
fi

awk -v start=$2 -v end=$3 '
$3 >= start && $3 < end {
  print $1, $2, $3 - start, $4, $5, $6
}' $1

