#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <trace file> [<parameter_for_fio> ...]"
  exit -1
fi

file=`readlink -e $1`
if [[ $? != 0 || ! -f $file ]]; then
  echo "Error: $1 is not a file"
  exit -2
fi

sudo hdparm -W0 /dev/sdb 2>&1 >/dev/null

filename=`basename $file`
fio_iolog="/tmp/${filename}.$$.iolog"
fio_script="/tmp/${filename}.$$.fio"
device="/dev/sdb1"

is_fio_iolog=$(head -n 1 $file | grep "fio version 2 iolog")
if [ $? != 0 ]; then
  awk -v device=$device '
  BEGIN {
    print "fio version 2 iolog"
    print device, "add"
    print device, "open"
  }
  $5 == 0 {
    print device, "write", $3 * 512, $4 *512
  }
  $5 == 1 {
    print device, "read", $3 * 512, $4 *512
  }
  END {
    print device, "close"
  }' $file > $fio_iolog
else
  fio_iolog=$file
fi

cat > $fio_script <<EOF
[global]
ioengine=libaio
iodepth=32
direct=1
ignore_error=28

[restart]
read_iolog=$fio_iolog
replay_no_stall=1
end_fsync=1
EOF

if [ $# -gt 1 ]; then
  array=( $@ )
  len=${#array[@]}
  _args=${array[@]:1:$len}

  sudo fio $fio_script "$_args"
else
  sudo fio $fio_script
fi

