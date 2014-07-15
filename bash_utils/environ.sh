#!/bin/bash

DATE=`date +%y%m%d-%H%M%S`
LOGDIR=logs/$MACHINE/$DATE
ROOTDIR=`pwd -P`
SUMMARY_FILE="$ROOTDIR/$LOGDIR/summary"
ERR_CNT=0
TESTDIR=checkouts/$DATE/CVMix
REPO=git@github.com:CVMix/CVMix-src.git
COMPILERS=()
RUNCOMPILERS=()

if [ ! -e $LOGDIR ]; then
  mkdir -p $LOGDIR
fi
