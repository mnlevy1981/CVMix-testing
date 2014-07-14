#!/bin/bash

buildtest () {

  echo "Trying to build with following compilers: ${COMPILERS[*]}" | tee -a $SUMMARY_FILE
  echo "----" | tee -a $SUMMARY_FILE
  COMP_CNT=0
  for compiler in ${COMPILERS[@]}
  do
    BLDLOG="$ROOTDIR/logs/buildlog.$compiler.$DATE"
    COMP_CNT=$((COMP_CNT+1))

    # (a) Set environment for building (load modules)
    loadmod $compiler $MACHINE

    # (b) Run cvmix_setup
    cd $ROOTDIR/$TESTDIR/bld/
    ./cvmix_setup $FC "$NETCDF_LOC"

    # (c) Build libcvmix.a
    cd ../src
    if [ $MACHINE != "hopper" ]; then
      echo "($COMP_CNT) Trying to build using $compiler..." | tee -a $SUMMARY_FILE
    else
      echo "($COMP_CNT) Trying to build using $compiler (PE_ENV = $PE_ENV)..." | tee -a $SUMMARY_FILE
    fi
    make lib >> $BLDLOG 2>&1
    if [ $? -eq 0 ]; then
      echo "    ... built libcvmix.a using $compiler" | tee -a $SUMMARY_FILE

      # (d) Build without netcdf
      make >> $BLDLOG 2>&1
      if [ $? -eq 0 ]; then
        echo "    ... built executable using $compiler without netcdf" | tee -a $SUMMARY_FILE
        mv ../bin/cvmix ../bin/cvmix.no_netcdf.$compiler
      else
        echo "    ERROR: Could not build using $compiler without netcdf" | tee -a $SUMMARY_FILE
        ERR_CNT=$((ERR_CNT+1))
      fi

      # (e) Build with netcdf
      make netcdf >> $BLDLOG 2>&1
      if [ $? -eq 0 ]; then
        echo "    ... built executable using $compiler with netcdf" | tee -a $SUMMARY_FILE
        mv ../bin/cvmix ../bin/cvmix.netcdf.$compiler
        RUNCOMPILERS+=($compiler)
      else
        echo "    ERROR: Could not build using $compiler with netcdf" | tee -a $SUMMARY_FILE
        ERR_CNT=$((ERR_CNT+1))
      fi
    else
      echo "    ... ERROR: Could not build libcvmix.a using $compiler" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi
    make distclean >> $BLDLOG 2>&1
  done

  echo ""
}
