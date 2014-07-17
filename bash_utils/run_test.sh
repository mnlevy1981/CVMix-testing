#!/bin/bash

runtest () {

  echo "Trying to run with following compilers: ${RUNCOMPILERS[*]}" | tee -a $SUMMARY_FILE
  echo "----" | tee -a $SUMMARY_FILE
  COMP_CNT=0
  for compiler in ${RUNCOMPILERS[@]}
  do
    RUNLOG="$ROOTDIR/$LOGDIR/runlog.$compiler"
    COMP_CNT=$((COMP_CNT+1))

    # (a) Set environment for building (load modules)
    loadmod $compiler $MACHINE

    # (b) Link to proper binary
    cd $ROOTDIR/$TESTDIR/bin/
    rm -f cvmix
    ln -s cvmix.netcdf.$compiler cvmix

    # (c) Run regression tests
    echo "($COMP_CNT) Running tests with $compiler..." | tee -a $SUMMARY_FILE

    #     (i) Bryan-Lewis
    cd ../reg_tests/Bryan-Lewis
    ./BL_test.sh -nc -nb  2>&1 >> $RUNLOG
    if [ $? -eq 0 ]; then
      echo "    ... Successfully ran BL test" | tee -a $SUMMARY_FILE
    else
      echo "    ERROR: Could not run BL test" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi

    #     (ii) Double Diffusion
    cd ../double_diff
    ./double_diff-test.sh -nc -nb  2>&1 >> $RUNLOG
    if [ $? -eq 0 ]; then
      echo "    ... Successfully ran double diffusion test" | tee -a $SUMMARY_FILE
    else
      echo "    ERROR: Could not run double diffusion test" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi

    #     (iii) Shear mixing
    cd ../shear-KPP
    ./Large_test.sh -nc -nb  2>&1 >> $RUNLOG
    if [ $? -eq 0 ]; then
      echo "    ... Successfully ran shear mixing test" | tee -a $SUMMARY_FILE
    else
      echo "    ERROR: Could not run shear mixing test" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi

    #     (iii) KPP
    cd ../kpp
    ./kpp-test.sh -nc -nb  2>&1 >> $RUNLOG
    if [ $? -eq 0 ]; then
      echo "    ... Successfully ran KPP test" | tee -a $SUMMARY_FILE
    else
      echo "    ERROR: Could not run KPP test" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi

  done

  echo ""
}
