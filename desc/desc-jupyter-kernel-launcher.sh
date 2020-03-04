#!/bin/bash

# ----------------------------------------------------------------------------#
# File:    desc-jupyter-kernel-launcher.sh                                    #
#                                                                             #
# Purpose: launch a Python Jupyter kernel configured to use a DESC software   #
# (GCRCatalogs)                                                               #
#                                                                             #
#                                                                             #
# Usage:  this file and its companion configuration files must be located     #
#         at                                                                  #
#              ~/.local/share/jupyter/kernels   (Linux)                       #
#              ~/Library/Jupyter/kernels        (macOS)                       #
#                                                                             #
#                                                                             #
# Source:  https://www.github.com/combet/desc-jupyter-kernel                  #
#                                                                             #
# Author: celine combet                                                       #
#         LPSC/IN2P3/CNRS                                                     #
#                                                                             #
# This software was directly adapted from the lsst-jupyter-kernel             #
# developed by Fabio Hernandez                                                #
# (https://github.com/airnandez/lsst-jupyter-kernel)                          #                                                                             #
# ----------------------------------------------------------------------------#

distribDir='/pbs/throng/lsst/software/desc'
releaseDir=${distribDir}
export DESC_DISTRIB_RELEASE=${releaseDir}
source ${distribDir}/setup.sh
exec python -m ipykernel_launcher "$@"

# Original code from lsst-jupyter-kernel

# # Determine the lsst_distrib top level directory
# #
# case $(uname) in
#     "Linux")
#         distribDir='/cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib';;
#     "Darwin")
#         distribDir='/cvmfs/sw.lsst.eu/darwin-x86_64/lsst_distrib';;
# esac

# #
# # Build the absolute path of the specified release via the environment
# # variable "LSST_DISTRIB_RELEASE" or the "latest" available
# #
# release=${LSST_DISTRIB_RELEASE:-'latest'}
# if [[ ${release} == 'latest' ]]; then
#     release=$(ls ${distribDir} | tail -1)
# fi
# releaseDir=${distribDir}/${release}

# #
# # EUPS setup the requested release
# #
# if [[ -f ${releaseDir}/loadLSST.bash ]]; then
#    export LSST_DISTRIB_RELEASE=$(basename ${releaseDir})
#    source ${releaseDir}/loadLSST.bash
#    setup lsst_distrib
# fi


# #
# # Launch the Jupyter kernel using the python interpreter of the specified
# # release 
# #
# # !!! WARNING: don't modify this line !!!
# # exec python -m ipykernel_launcher "$@"
