make -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include" SRC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared OBJ_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj LIB_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/lib INC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/include UCASE=
make[1]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
/home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/makedep.py /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/shared_deps.d /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared
cvmix_ddiff.o depends on cvmix_kinds_and_types.o
cvmix_ddiff.o depends on cvmix_put_get.o
cvmix_ddiff.o depends on cvmix_utils.o
cvmix_convection.o depends on cvmix_kinds_and_types.o
cvmix_convection.o depends on cvmix_utils.o
cvmix_convection.o depends on cvmix_put_get.o
cvmix_put_get.o depends on cvmix_kinds_and_types.o
cvmix_put_get.o depends on cvmix_utils.o
cvmix_utils.o depends on cvmix_kinds_and_types.o
cvmix_math.o depends on cvmix_kinds_and_types.o
cvmix_kpp.o depends on cvmix_kinds_and_types.o
cvmix_kpp.o depends on cvmix_math.o
cvmix_kpp.o depends on cvmix_put_get.o
cvmix_kpp.o depends on cvmix_utils.o
cvmix_tidal.o depends on cvmix_kinds_and_types.o
cvmix_tidal.o depends on cvmix_utils.o
cvmix_background.o depends on cvmix_kinds_and_types.o
cvmix_background.o depends on cvmix_put_get.o
cvmix_background.o depends on cvmix_utils.o
cvmix_shear.o depends on cvmix_kinds_and_types.o
cvmix_shear.o depends on cvmix_background.o
cvmix_shear.o depends on cvmix_put_get.o
cvmix_shear.o depends on cvmix_utils.o
Generated dependencies!
make -e -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile /home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod USE_DEPS=TRUE
make[2]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_kinds_and_types.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kinds_and_types.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_utils.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_utils.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_put_get.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_put_get.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_background.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_background.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_convection.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_convection.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_ddiff.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_math.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_math.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_kpp.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_shear.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/cvmix_tidal.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal.o
ar -ru /home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kinds_and_types.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_background.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_convection.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_math.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_put_get.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_utils.o
ar: creating /home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kinds_and_types.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_background.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_convection.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_math.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_put_get.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod
cp /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_utils.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod
make[2]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[1]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include" SRC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared OBJ_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj LIB_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/lib INC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/include UCASE=
make[1]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make -e -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile /home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod USE_DEPS=TRUE
make[2]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod' is up to date.
make[2]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod' is up to date.
make[2]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[1]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
/home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/makedep.py /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/standalone_deps.d /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj /home/mlevy/CVMix-tests/checkouts/141017-170941/src /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers /home/mlevy/CVMix-tests/checkouts/141017-170941/include
cvmix_driver.o depends on cvmix_kinds_and_types.mod
cvmix_io.o depends on cvmix_kinds_and_types.mod
cvmix_io.o depends on cvmix_utils.mod
cvmix_ddiff_drv.o depends on cvmix_kinds_and_types.mod
cvmix_ddiff_drv.o depends on cvmix_ddiff.mod
cvmix_ddiff_drv.o depends on cvmix_put_get.mod
cvmix_ddiff_drv.o depends on cvmix_io.o
cvmix_tidal_Simmons.o depends on cvmix_kinds_and_types.mod
cvmix_tidal_Simmons.o depends on cvmix_tidal.mod
cvmix_tidal_Simmons.o depends on cvmix_put_get.mod
cvmix_tidal_Simmons.o depends on cvmix_io.o
cvmix_shear_KPP.o depends on cvmix_kinds_and_types.mod
cvmix_shear_KPP.o depends on cvmix_shear.mod
cvmix_shear_KPP.o depends on cvmix_put_get.mod
cvmix_shear_KPP.o depends on cvmix_io.o
cvmix_bgrnd_BL.o depends on cvmix_kinds_and_types.mod
cvmix_bgrnd_BL.o depends on cvmix_background.mod
cvmix_bgrnd_BL.o depends on cvmix_put_get.mod
cvmix_bgrnd_BL.o depends on cvmix_io.o
cvmix_kpp_drv.o depends on cvmix_kinds_and_types.mod
cvmix_kpp_drv.o depends on cvmix_kpp.mod
cvmix_kpp_drv.o depends on cvmix_put_get.mod
cvmix_kpp_drv.o depends on cvmix_io.o
Generated dependencies!
cd /home/mlevy/CVMix-tests/checkouts/141017-170941/src; make /home/mlevy/CVMix-tests/checkouts/141017-170941/bin/cvmix USE_DEPS=TRUE
make[1]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/cvmix_driver.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_driver.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/cvmix_io.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_io.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_bgrnd_BL.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_bgrnd_BL.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_shear_KPP.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear_KPP.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_tidal_Simmons.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal_Simmons.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_ddiff_drv.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff_drv.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_kpp_drv.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp_drv.o
gfortran -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bin/cvmix /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_driver.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_io.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_bgrnd_BL.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear_KPP.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal_Simmons.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff_drv.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp_drv.o -L/home/mlevy/CVMix-tests/checkouts/141017-170941/lib -lcvmix
make[1]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/Makefile USE_NETCDF=TRUE
make[1]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
rm -f /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_io.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_bgrnd_BL.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear_KPP.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal_Simmons.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff_drv.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp_drv.o
make -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include" SRC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared OBJ_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj LIB_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/lib INC_DIR=/home/mlevy/CVMix-tests/checkouts/141017-170941/include UCASE=
make[2]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make -e -f /home/mlevy/CVMix-tests/checkouts/141017-170941/src/shared/Makefile /home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod /home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod USE_DEPS=TRUE
make[3]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/lib/libcvmix.a' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kinds_and_types.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_background.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_convection.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_ddiff.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_kpp.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_math.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_put_get.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_shear.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_tidal.mod' is up to date.
make[3]: `/home/mlevy/CVMix-tests/checkouts/141017-170941/include/cvmix_utils.mod' is up to date.
make[3]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[2]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
cd /home/mlevy/CVMix-tests/checkouts/141017-170941/src; make /home/mlevy/CVMix-tests/checkouts/141017-170941/bin/cvmix USE_DEPS=TRUE
make[2]: Entering directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/cvmix_io.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_io.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_bgrnd_BL.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_bgrnd_BL.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_shear_KPP.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear_KPP.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_tidal_Simmons.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal_Simmons.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_ddiff_drv.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff_drv.o
gfortran -O2 -ffree-form -J /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj -cpp -Wall -Werror -D_NETCDF -I/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/include -I/home/mlevy/CVMix-tests/checkouts/141017-170941/include -c /home/mlevy/CVMix-tests/checkouts/141017-170941/src/drivers/cvmix_kpp_drv.F90 -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp_drv.o
gfortran -o /home/mlevy/CVMix-tests/checkouts/141017-170941/bin/cvmix /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_driver.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_io.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_bgrnd_BL.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_shear_KPP.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_tidal_Simmons.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_ddiff_drv.o /home/mlevy/CVMix-tests/checkouts/141017-170941/bld/obj/cvmix_kpp_drv.o -L/home/mlevy/CVMix-tests/checkouts/141017-170941/lib -lcvmix -L/usr/local/netcdf_c-4.3.0_f-4.4-beta1-gcc-g++-gfortran-4.4.7-3/lib -lnetcdff -lnetcdf
make[2]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
make[1]: Leaving directory `/home/mlevy/CVMix-tests/checkouts/141017-170941/src'
