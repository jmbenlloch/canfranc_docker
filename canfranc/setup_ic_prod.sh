#!/bin/bash
IC=/software/IC
VERSION=$1
git clone https://github.com/nextic/IC $IC
cd $IC; git checkout $VERSION

export PATH="/software/miniconda3/bin:$PATH"
export LD_LIBRARY_PATH="/software/miniconda3/lib:$LD_LIBRARY_PATH"
source manage.sh install_and_check 3.6

#Check error during installation
if [ $? -ne 0 ]; then
	echo "Error installing IC version $VERSION"
	exit 1
fi
