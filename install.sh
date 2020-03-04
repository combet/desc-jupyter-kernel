#!/bin/bash

# Determine what platform we are running on
case $(uname) in
    "Linux")
        kernelSpecsDir="$HOME/.local/share/jupyter/kernels";;
    "Darwin")
        kernelSpecsDir="$HOME/Library/Jupyter/kernels";;
    *)
        echo "unsupported platform"
        exit 1
        ;;
esac

# Create the destination directory
kernelName='desc'
destinationDir=${kernelSpecsDir}/${kernelName}
mkdir -p ${destinationDir}

# Copy the relevant files
sourceDir=./${kernelName}
cp ${sourceDir}/logo-64x64.png ${destinationDir}
sed "s|{KERNEL_DIR}|${destinationDir}|g" ${sourceDir}/kernel.json > ${destinationDir}/kernel.json
cp ${sourceDir}/desc-jupyter-kernel-launcher.sh ${destinationDir} && \
    chmod u+x ${destinationDir}/desc-jupyter-kernel-launcher.sh
