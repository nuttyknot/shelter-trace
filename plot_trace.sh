#!/bin/bash

filename=`basename $1`

gnuplot << EOM
set term png notransparent size 1280,960
set output '${filename}.png
set title '$1'
set xlabel "Time (ms)"
set ylabel "Block Number (512B Block)"

plot '$1' using 1:3 with points
EOM
