#!/bin/bash

if [ $# != 1 ]; then
  echo "Usage: $0 <trace file>"
  exit -1
fi

file=`readlink -e $1`
if [[ $? != 0 || ! -f $file ]]; then
  echo "Error: $1 is not a file"
  exit -2
fi

sudo hdparm -W0 /dev/sdb

filename=`basename $file`
fio_iolog="/tmp/${filename}.$$.iolog"
fio_script="/tmp/${filename}.$$.fio"
device="/dev/sdb1"

is_fio_iolog=$(head -n 1 $filename | grep "fio version 2 iolog")
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
  fio_iolog=$filename
fi

echo "fio trace: $fio_iolog"

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

echo "+ sudo fio $fio_script"
sudo fio $fio_script

