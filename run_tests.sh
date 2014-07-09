#!/bin/bash

# 0) Initialize variables
ROOTDIR=`pwd -P`
#COMPILERS=( "gnu" "intel" "pgi" "nag" )
COMPILERS=( "gnu" "intel" )
DATE=`date +%y%m%d-%H%M%S`
LOGFILE="$ROOTDIR/logs/log.goldbach.$DATE"
FULLDUMP="$ROOTDIR/logs/FullOutput.goldbach.$DATE"
ERR_CNT=0

# 1) Check out 4 copies of repository (1 for each compiler)
REPO=git@github.com:CVMix/CVMix-src.git

for compiler in ${COMPILERS[@]}
do
  TESTDIR=CVMix.$compiler
  git clone $REPO $TESTDIR &>> $FULLDUMP
  cd $TESTDIR

  # SET ENVIRONMENT FOR BUILDING
  case $compiler in
    "gnu")
      module purge &>> $FULLDUMP
      module load compiler/gnu/4.4.7 &>> $FULLDUMP
      echo "Building with GNU compiler!"
      echo "FC = gfortran" > bld/.CVMix_env
    ;;
    "intel")
      module purge &>> $FULLDUMP
      module load compiler/intel &>> $FULLDUMP
      echo "Building with intel compiler!"
      echo "FC = ifort" > bld/.CVMix_env
    ;;
    *)
      echo "No option set for $compiler"
      exit 1
    ;;
  esac
  echo "NETCDF_INC = $NETCDF_PATH/include" >> bld/.CVMix_env
  echo "NETCDF_LIB = $NETCDF_PATH/lib" >> bld/.CVMix_env

# Build
  cd src
  make &>> $FULLDUMP
  if [ $? -ne 0 ]; then
    echo "Non-netcdf $compiler Build failed" >> $LOGFILE
    ERR_CNT=$((ERR_CNT+1))
  fi

  make netcdf &>> $FULLDUMP
  if [ $? -ne 0 ]; then
    echo "netcdf $compiler Build failed" >> $LOGFILE
    ERR_CNT=$((ERR_CNT+1))
    SKIP_COMPILER=TRUE
  fi

  # Back up to ROOTDIR for next compiler
  cd $ROOTDIR
done

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
