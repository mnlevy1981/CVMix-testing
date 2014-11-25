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
          # 13.1.2 and 14.0.2 both build as of Aug 4, but the default intel
          # compiler is 14.0.0 which doesn't link to netCDF correctly. Sticking
          # with 13.1.2 until 14.1 is available (assuming it works)
          module load compiler/intel/13.1.2
        ;;
        "pgi" )
          module load compiler/pgi
        ;;
        "nag" )
          module load compiler/nag/5.3.1-907
        ;;
        * )
          echo "ERROR (loadmod): $COMPILER is not a valid compiler for $MACHINE"
          exit 3
        ;;
      esac
      NETCDF_LOC=$NETCDF_PATH
    ;;
    "yellowstone" )
      module purge
      case $COMPILER in
        "gnu" )
          module load gnu/4.4.7
          module load netcdf
        ;;
        "intel" )
          module load intel
          module load netcdf
        ;;
        "pgi" )
          module load pgi
          module load netcdf
        ;;
        "pathscale" )
          module load pathscale
          module load netcdf
        ;;
        * )
          echo "ERROR (loadmod): $COMPILER is not a valid compiler for $MACHINE"
          exit 3
        ;;
      esac
      module load ncarcompilers ncarbinlibs
      NETCDF_LOC=$NETCDF
    ;;
    "hopper" )
      module purge > /dev/null 2>&1
      case $COMPILER in
        "cray" )
          module load PrgEnv-cray
        ;;
        "gnu" )
          module load PrgEnv-gnu
        ;;
        "intel" )
          module load PrgEnv-intel
        ;;
        "pgi" )
          module load PrgEnv-pgi pgi
        ;;
        "pathscale" )
          module load PrgEnv-pathscale
        ;;
        * )
          echo "ERROR (loadmod): $COMPILER is not a valid compiler for $MACHINE"
          exit 3
        ;;
      esac
      module load xt-asyncpe
      if [ $compiler != "cray" ]; then
        module load netcdf
      else
        module load netcdf/4.2.0
      fi
      FC=ftn
      NETCDF_LOC=$NETCDF_DIR
    ;;
    "darwin" )
      NETCDF_LOC="$HOME/local/netcdf"
    ;;
    "netbook" )
      NETCDF_LOC="/usr"
    ;;
    * )
      echo "ERROR (loadmod): $MACHINE is not a supported machine at this time!"
      exit 2
    ;;
  esac

  # Set FC (needed for cvmix_setup)
  if [ $MACHINE != "hopper" ]; then
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
      "pathscale" )
        FC=pathf95
      ;;
      * )
        echo "ERROR (loadmod): $compiler is not a valid compiler!"
        exit 1
      ;;
    esac
  fi
}
