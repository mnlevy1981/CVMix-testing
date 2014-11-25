#!/bin/bash

###############################################################################
#                                                                             #
#                                    USAGE                                    #
#                                                                             #
###############################################################################

build_usage () {
  echo "usage:"
  echo './CVMix_testing.sh -mach MACHINENAME [-compilers "COMP1 COMP2 ... COMPN"] [-b BRANCHNAME]'
  echo ''
  echo "Required flags:"
  echo "-mach        Name of machine to run tests on"
  echo "             Currently supported:"
  echo "               * goldbach [CGD machine at NCAR]"
  echo "               * yellowstone [CISL machine at NCAR]"
  echo "Optional flags:"
  echo "-compilers     List of compilers to test (default is all available on machine)"
  echo "-baseline      Baseline tag for comparing output"
  echo "-makebaseline  Make output into a new baseline tag"
  echo "-local         Check out from $HOME/codes/CVMix instead of github"
  echo "-clean         Wipe out all logs and directories created by this tool"
  echo "-b             Checkout the BRANCHNAME branch of the code"
  echo "-c             Check out specific commit"
  echo "-h             Show this help menu"
}

###############################################################################
#                                                                             #
#                                MAIN ROUTINE                                 #
#                                                                             #
###############################################################################

# 1) Parse inputs
COMPILERS=()
BRANCHNAME=master
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
    -b )
      BRANCHNAME=$2
      shift
    ;;
    -baseline )
      BASELINECOMPARE=$2
      shift;
    ;;
    -makebaseline )
      NEWBASELINE=$2
      shift;
    ;;
    -local )
      LOCAL=TRUE
    ;;
    -c )
      CHECKOUT=$2
      shift
    ;;
    -clean )
      echo "Deleting checkouts/* and logs/[a-z]*"
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
. bash_utils/compare_test.sh

# Use default compiler if COMPILERS is not set
if [ ${#COMPILERS[@]} -eq 0 ]; then
  setcompiler $MACHINE
fi

# 3) Check out clean copy of repository
echo "Grabbing the $BRANCHNAME branch..."
git clone -b $BRANCHNAME $REPO $TESTDIR 2>&1 | tee -a $SUMMARY_FILE
cd $TESTDIR
if [ ! -e $CHECKOUT ]; then
  echo "Getting commit $CHECKOUT"
  git checkout $CHECKOUT
fi
REVNO=`git log --pretty=format:"%H" | head -n 1`
REVINFO=`git log --pretty=format:"%an, %ad" | head -n 1`
echo "Last commit: $REVNO" | tee -a $SUMMARY_FILE
echo "Commit info: $REVINFO" | tee -a $SUMMARY_FILE
echo '' | tee -a $SUMMARY_FILE

# 4) Build test
buildtest

# 5) Run test
runtest

# 6) Baselines
if [ ! -e $BASELINECOMPARE ]; then
  compare_to_baseline
fi

if [ ! -e $NEWBASELINE ]; then
  echo "Making new baseline: $NEWBASELINE..."
fi

# REPORT BACK
echo "There were $ERR_CNT errors encountered along the way!"
if [ ! -e $BASELINECOMPARE ]; then
  echo "$BASE_ERR output files differ from the baseline"
fi

