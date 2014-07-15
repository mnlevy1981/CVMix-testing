#!/bin/bash

###############################################################################
#                                                                             #
#                                    USAGE                                    #
#                                                                             #
###############################################################################

build_usage () {
  echo "usage:"
  echo './CVMix_testing.sh -mach MACHINENAME [-compilers "COMP1 COMP2 ... COMPN"]'
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

# 1) Parse inputs
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
      rm -rf checkouts/*
      rm -rf logs/[a-z]*
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

# 2) Initialize variables, load functions
. bash_utils/environ.sh
. bash_utils/loadmod.sh
. bash_utils/setcompiler.sh
. bash_utils/build_test.sh
. bash_utils/run_test.sh

# Use default compiler if COMPILERS is not set
if [ -z $COMPILERS ]; then
  setcompiler $MACHINE
fi

# 3) Check out clean copy of repository
git clone $REPO $TESTDIR 2>&1 | tee -a $SUMMARY_FILE
cd $TESTDIR
REVNO=`git log --pretty=format:"%H" | head -n 1`
REVINFO=`git log --pretty=format:"%an, %ad" | head -n 1`
echo "Last commit: $REVNO" | tee -a $SUMMARY_FILE
echo "Commit info: $REVINFO" | tee -a $SUMMARY_FILE
echo '' | tee -a $SUMMARY_FILE

# 4) Build test
buildtest

# 5) Run test
runtest

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
