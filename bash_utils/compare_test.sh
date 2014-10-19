#!/bin/bash

compare_to_baseline () {

  echo "Comparing output from the following compilers: ${RUNCOMPILERS[*]}" | tee -a $SUMMARY_FILE
  echo "----" | tee -a $SUMMARY_FILE
  BASE_CNT=0
  BASE_ERR=0

  for compiler in ${RUNCOMPILERS[@]}
  do
    RUNLOG="$ROOTDIR/$LOGDIR/runlog.$compiler"
    BASELOG="$ROOTDIR/baselines/$MACHINE/$BASELINECOMPARE/runlog.$compiler"
    BASE_CNT=$((BASE_CNT+1))

    echo "($BASE_CNT) Comparing runlog.$compiler to baseline..."
    diff $BASELOG $RUNLOG
    if [ $? -ne 0 ]; then
    diff $BASELOG $RUNLOG >> $SUMMARY_FILE
      BASE_ERR=$((BASE_ERR+1))
      echo "    ... files differ!" | tee -a $SUMMARY_FILE
    else
      echo "    ... files are the same" | tee -a $SUMMARY_FILE
    fi

  done

  echo ""
}
