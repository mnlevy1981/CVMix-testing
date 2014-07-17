#!/bin/bash

DATE=`date +%y%m%d-%H%M%S`
LOGDIR=logs/$MACHINE/$DATE
ROOTDIR=`pwd -P`
SUMMARY_FILE="$ROOTDIR/$LOGDIR/summary"
ERR_CNT=0
TESTDIR=checkouts/$DATE
REPO=git@github.com:CVMix/CVMix-src.git
RUNCOMPILERS=()

if [ ! -e $LOGDIR ]; then
  mkdir -p $LOGDIR
fi
