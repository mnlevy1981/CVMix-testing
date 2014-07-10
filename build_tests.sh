#!/bin/bash

##############################################################################
#                                                                            #
#           CHANGE THESE ROUTINES IF MODULES NEED TO BE UPDATED              #
#                                                                            #
##############################################################################

gnu_env ()
{
  module purge &>> $BLDLOG
  module load compiler/gnu/4.4.7 &>> $BLDLOG
}

intel_env ()
{
  module purge &>> $BLDLOG
  module load compiler/intel &>> $BLDLOG
}

pgi_env ()
{
      module purge &>> $BLDLOG
      module load compiler/pgi &>> $BLDLOG
}

nag_env ()
{
      module purge &>> $BLDLOG
      module load compiler/nag &>> $BLDLOG
}

##############################################################################
#                                                                            #
#                             MAIN ROUTINE                                   #
#                                                                            #
##############################################################################

# 0) Initialize variables
DATE=`date +%y%m%d-%H%M%S`
ROOTDIR=`pwd -P`
COMPILERS=( "gnu" "intel" "pgi" "nag" )
SUMMARY_FILE="$ROOTDIR/logs/summary.$DATE"
BLDLOG="$ROOTDIR/logs/buildlog.$DATE"
ERR_CNT=0

# 1) Check out 4 copies of repository (1 for each compiler)
REPO=git@github.com:CVMix/CVMix-src.git

for compiler in ${COMPILERS[@]}
do
  TESTDIR=CVMix-$compiler.$DATE
  git clone $REPO $TESTDIR &>> $BLDLOG
  cd $TESTDIR

  # 1a) Set environment for building (load modules, set .CVMix_env)
  case $compiler in
    "gnu")
      gnu_env
      echo "Building with GNU compiler..."
      echo "FC = gfortran" > bld/.CVMix_env
    ;;
    "intel")
      intel_env
      echo "Building with intel compiler..."
      echo "FC = ifort" > bld/.CVMix_env
    ;;
    "pgi")
      pgi_env
      echo "Building with PGI compiler..."
      echo "FC = pgf90" > bld/.CVMix_env
    ;;
    "nag")
      nag_env
      echo "Building with NAG compiler..."
      echo "FC = nagfor" > bld/.CVMix_env
    ;;
    *)
      echo "No option set for $compiler"
      exit 1
    ;;
  esac
  echo "NETCDF_INC = $NETCDF_PATH/include" >> bld/.CVMix_env
  echo "NETCDF_LIB = $NETCDF_PATH/lib" >> bld/.CVMix_env

  # 1b) Build without netcdf
  echo "Trying to build with all compilers:" >> $SUMMARY_FILE
  cd src
  make &>> $BLDLOG
  if [ $? -eq 0 ]; then
    echo "Successfully built using $compiler without netcdf!" | tee -a $SUMMARY_FILE
  else
    echo "ERROR: Could not build using $compiler without netcdf!" | tee -a $SUMMARY_FILE
    ERR_CNT=$((ERR_CNT+1))
  fi

  # 1c) Build with netcdf
  make netcdf &>> $BLDLOG
  if [ $? -eq 0 ]; then
    echo "Successfully built using $compiler with netcdf!" | tee -a $SUMMARY_FILE
  else
    echo "ERROR: Could not build using $compiler with netcdf!" | tee -a $SUMMARY_FILE
    ERR_CNT=$((ERR_CNT+1))
  fi

  # Back up to ROOTDIR for next compiler
  cd $ROOTDIR
done

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
