#!/bin/bash
CERES=/home/icuser/CERES
git clone https://github.com/nextic/CERES $CERES
pip install -r $CERES/requirements.txt
pip install pytest

#Check error during installation
if [ $? -ne 0 ]; then
	echo "Error installing CERES"
	exit 1
fi
