#!/bin/bash

runtest () {

  echo "Trying to run with following compilers: ${RUNCOMPILERS[*]}" | tee -a $SUMMARY_FILE
  echo "----" | tee -a $SUMMARY_FILE
  COMP_CNT=0
  for compiler in ${RUNCOMPILERS[@]}
  do
    RUNLOG="$ROOTDIR/logs/runlog.$compiler.$DATE"
    COMP_CNT=$((COMP_CNT+1))

    # (a) Set environment for building (load modules)
    loadmod $compiler $MACHINE

    # (b) Link to proper binary
    cd $ROOTDIR/$TESTDIR/bin/
    rm -f cvmix
    ln -s cvmix.netcdf.$compiler cvmix

    # (c) Run regression test
    cd ../reg_tests/Bryan-Lewis
    ./BL_test.sh -nc -nb  &>> $RUNLOG
    if [ $? -eq 0 ]; then
      echo "($COMP_CNT) Successfully ran using $compiler" | tee -a $SUMMARY_FILE
    else
      echo "($COMP_CNT) ERROR: Could not run using $compiler" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi
  done

  echo ""
}
