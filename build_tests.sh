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
. bash_utils/build_test.sh

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

# 3) Check out clean copy of repository
git clone $REPO $TESTDIR &>> $BLDLOG
cd $TESTDIR

# 4) Build test
buildtest

# 5) Run test

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
