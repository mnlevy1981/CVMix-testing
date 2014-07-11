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
    ./cvmix_setup $FC "$NETCDF_DIR"

    # (c) Build libcvmix.a
    cd ../src
    make lib &>> $BLDLOG
    if [ $? -eq 0 ]; then
      echo "($COMP_CNT) built libcvmix.a using $compiler..." | tee -a $SUMMARY_FILE

      # (d) Build without netcdf
      make &>> $BLDLOG
      if [ $? -eq 0 ]; then
        echo "    ... built executable using $compiler without netcdf" | tee -a $SUMMARY_FILE
        mv ../bin/cvmix ../bin/cvmix.no_netcdf.$compiler
      else
        echo "    ERROR: Could not build using $compiler without netcdf" | tee -a $SUMMARY_FILE
        ERR_CNT=$((ERR_CNT+1))
      fi

      # (e) Build with netcdf
      make netcdf &>> $BLDLOG
      if [ $? -eq 0 ]; then
        echo "    ... built executable using $compiler with netcdf" | tee -a $SUMMARY_FILE
        mv ../bin/cvmix ../bin/cvmix.netcdf.$compiler
        RUNCOMPILERS+=($compiler)
      else
        echo "    ERROR: Could not build using $compiler with netcdf" | tee -a $SUMMARY_FILE
        ERR_CNT=$((ERR_CNT+1))
      fi
    else
      echo "($COMP_CNT) ERROR: Could not build libcvmix.a using $compiler" | tee -a $SUMMARY_FILE
      ERR_CNT=$((ERR_CNT+1))
    fi
    make distclean &>> $BLDLOG
  done

  echo ""
}
