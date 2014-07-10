#!/bin/bash

DATE=`date +%y%m%d-%H%M%S`
ROOTDIR=`pwd -P`
SUMMARY_FILE="$ROOTDIR/logs/summary.$DATE"
BLDLOG="$ROOTDIR/logs/buildlog.$DATE"
ERR_CNT=0
TESTDIR=CVMix.$DATE
COMPILERS=()
