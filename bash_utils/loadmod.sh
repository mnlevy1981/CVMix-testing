#!/bin/bash

loadmod () {

  if [ $# -ne 2 ]; then
    echo "ERROR (loadmod): loadmod requires exactly 2 arguments (compiler and machine)"
    exit 1
  fi

  COMPILER=$1
  MACHINE=$2

  # Load proper environment for COMPILER on MACHINE
  case $MACHINE in
    "goldbach" )
      module purge
      case $COMPILER in
        "gnu" )
          module load compiler/gnu/4.4.7
        ;;
        "intel" )
          module load compiler/intel
        ;;
        "pgi" )
          module load compiler/pgi
        ;;
        "nag" )
          module load compiler/nag
        ;;
        * )
          echo "ERROR (loadmod): $COMPILER is not a valid compiler for $MACHINE"
          exit 3
        ;;
      esac
    ;;
    * )
      echo "ERROR (loadmod): $MACHINE is not a supported machine at this time!"
      exit 2
    ;;
  esac

  # Set FC (needed for cvmix_setup)
  case $compiler in
    "gnu" )
      FC=gfortran
    ;;
    "intel" )
      FC=ifort
    ;;
    "pgi" )
      FC=pgf90
    ;;
    "nag" )
      FC=nagfor
    ;;
    * )
      echo "ERROR: $compiler is not a valid compiler!"
      exit 1
    ;;
  esac

}
