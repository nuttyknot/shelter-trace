#!/bin/bash

hash conda 2>/dev/null
if [ $? != 0 ]; then
  echo "You need to download and install miniconda from http://conda.pydata.org/miniconda.html"
  exit -1
fi

conda update conda
conda create --name ipython --file requirements.txt

echo "Done! You can start using by running,"
echo "    source activate ipython"
echo "then start ipython-notebook by calling,"
echo "    ipython notebook"

