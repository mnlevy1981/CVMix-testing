#!/bin/bash

DATE=`date +%y%m%d-%H%M%S`
ROOTDIR=`pwd -P`
SUMMARY_FILE="$ROOTDIR/logs/summary.$DATE"
ERR_CNT=0
TESTDIR=CVMix.$DATE
REPO=git@github.com:CVMix/CVMix-src.git
COMPILERS=()
RUNCOMPILERS=()

if [ ! -e logs ]; then
  mkdir -p logs
fi
