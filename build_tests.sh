#!/bin/bash

###############################################################################
#                                                                             #
#                                    USAGE                                    #
#                                                                             #
###############################################################################

build_usage () {
  echo "usage:"
  echo './build_tests.sh -mach MACHINENAME [-compilers "COMP1 COMP2 ... COMPN"]'
  echo ''
  echo "Required flags:"
  echo "-mach        Name of machine to run tests on"
  echo "             Currently supported:"
  echo "               * goldbach [CGD machine at NCAR]"
  echo "               * yellowstone [CISL machine at NCAR]"
  echo "Optional flags:"
  echo "-compilers   List of compilers to test (default is all available on machine)"
  echo "-clean       Wipe out all logs and directories created by this tool"
  echo "-h           Show this help menu"
}

###############################################################################
#                                                                             #
#                                MAIN ROUTINE                                 #
#                                                                             #
###############################################################################

# 1) Initialize variables, load functions
. bash_utils/environ.sh
. bash_utils/loadmod.sh
. bash_utils/setcompiler.sh

# 2) Parse inputs
while [ $# -gt 0 ]
do
  case $1 in
    -mach )
      MACHINE=$2
      shift
    ;;
    -compiler|-compilers )
      for compiler in $2
      do
        COMPILERS+=("$compiler")
      done
      shift
    ;;
    -clean )
      rm -rf CVMix.*
      rm -f logs/buildlog.* logs/summary.*
      exit 0
    ;;
    -h )
      build_usage
      exit 0
    ;;
    * )
      echo "ERROR: $1 is not a valid option!"
      build_usage
      exit 1
    ;;
  esac
  shift
done

# Error out if MACHINE is not set
if [ -z $MACHINE ]; then
  echo "ERROR: you must specify the machine you are running on"
  build_usage
  exit 2
fi

# Use default compiler if COMPILERS is not set
if [ -z $COMPILERS ]; then
  setcompiler $MACHINE
fi

# 3) Check out 4 copies of repository (1 for each compiler)
git clone $REPO $TESTDIR &>> $BLDLOG
cd $TESTDIR

for compiler in ${COMPILERS[@]}
do
  # 3a) Set environment for building (load modules)
  loadmod $compiler $MACHINE

  # 3b) Run cvmix_setup
  cd bld/
  ./cvmix_setup $FC "$NETCDF_DIR"
  cd ..

  # 3c) Build without netcdf
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

  # 3d) Build with netcdf
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
