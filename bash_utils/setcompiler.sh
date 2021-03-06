#!/bin/bash

setcompiler () {

  if [ $# -ne 1 ]; then
    echo "ERROR (setcompiler): setcompiler requires exactly 1 argument (machine name)"
    exit 1
  fi

  MACHINE=$1

  case $MACHINE in
    "goldbach" )
      COMPILERS=( "gnu" "intel" "pgi" "nag" )
    ;;
    "yellowstone" )
      COMPILERS=( "gnu" "intel" "pgi" "pathscale" )
    ;;
    "hopper" )
      COMPILERS=( "pgi" "gnu" "cray" "intel" )
    ;;
    "darwin" )
      COMPILERS=( "gnu" )
    ;;
    "netbook" )
      COMPILERS=( "gnu" )
    ;;
    * )
      echo "ERROR (setcompiler): $MACHINE is not a supported machine at this time!"
      exit 2
    ;;
  esac
}
