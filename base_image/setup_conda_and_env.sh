#!/bin/bash

#Conda 3
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda3.sh
bash miniconda3.sh -b -p /software/miniconda3
rm miniconda3.sh

#Conda 2
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O miniconda2.sh
bash miniconda2.sh -b -p /home/icuser/miniconda
rm miniconda2.sh
echo "export PATH=/home/icuser/miniconda/bin:$PATH" >> /home/icuser/.bashrc

#Env Variables for CERES
echo "export PYTHONPATH=/home/icuser/CERES:$PYTHONPATH" >> /home/icuser/.bashrc
echo "export CERESDIR=/home/icuser/CERES" >> /home/icuser/.bashrc
echo "export CERESDEVDIR=/home/icuser/CERES_dev" >> /home/icuser/.bashrc
