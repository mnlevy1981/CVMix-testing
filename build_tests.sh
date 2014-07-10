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
TESTDIR=CVMix.$DATE

# 1) Check out 4 copies of repository (1 for each compiler)
REPO=git@github.com:CVMix/CVMix-src.git
git clone $REPO $TESTDIR &>> $BLDLOG
cd $TESTDIR

for compiler in ${COMPILERS[@]}
do
  # 1a) Set environment for building (load modules)
  case $compiler in
    "gnu")
      gnu_env
      FC=gfortran
    ;;
    "intel")
      intel_env
      FC=ifort
    ;;
    "pgi")
      pgi_env
      FC=pgf90
    ;;
    "nag")
      nag_env
      FC=nagfor
    ;;
    *)
      echo "No option set for $compiler"
      exit 1
    ;;
  esac

  # 1b) Run cvmix_setup
  cd bld/
  ./cvmix_setup $FC "$NETCDF_PATH"
  cd ..

  # 1c) Build without netcdf
  echo "Trying to build with all compilers:" >> $SUMMARY_FILE
  cd src
  make &>> $BLDLOG
  if [ $? -eq 0 ]; then
    echo "Successfully built using $compiler without netcdf!" | tee -a $SUMMARY_FILE
    mv ../bin/cvmix ../bin/cvmix.no_netcdf.$compiler
  else
    echo "ERROR: Could not build using $compiler without netcdf!" | tee -a $SUMMARY_FILE
    ERR_CNT=$((ERR_CNT+1))
  fi

  # 1c) Build with netcdf
  make netcdf &>> $BLDLOG
  if [ $? -eq 0 ]; then
    echo "Successfully built using $compiler with netcdf!" | tee -a $SUMMARY_FILE
    mv ../bin/cvmix ../bin/cvmix.netcdf.$compiler
  else
    echo "ERROR: Could not build using $compiler with netcdf!" | tee -a $SUMMARY_FILE
    ERR_CNT=$((ERR_CNT+1))
  fi
  make distclean &>> $BLDLOG

  # Back up to TESTDIR for next compiler
  cd $ROOTDIR/$TESTDIR
done

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
