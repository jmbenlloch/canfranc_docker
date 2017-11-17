#!/bin/bash
CERES=/home/icuser/CERES_dev
git clone https://github.com/nextic/CERES $CERES
cd $CERES
git checkout dev

#Check error during installation
if [ $? -ne 0 ]; then
	echo "Error installing CERES"
	exit 1
fi
