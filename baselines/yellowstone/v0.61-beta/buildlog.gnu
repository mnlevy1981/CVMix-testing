make -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include" SRC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared OBJ_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj LIB_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib INC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include UCASE=
make[1]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/makedep.py /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/shared_deps.d /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared
cvmix_background.o depends on cvmix_kinds_and_types.o
cvmix_background.o depends on cvmix_put_get.o
cvmix_background.o depends on cvmix_utils.o
cvmix_convection.o depends on cvmix_kinds_and_types.o
cvmix_convection.o depends on cvmix_utils.o
cvmix_convection.o depends on cvmix_put_get.o
cvmix_ddiff.o depends on cvmix_kinds_and_types.o
cvmix_ddiff.o depends on cvmix_put_get.o
cvmix_ddiff.o depends on cvmix_utils.o
cvmix_kpp.o depends on cvmix_kinds_and_types.o
cvmix_kpp.o depends on cvmix_math.o
cvmix_kpp.o depends on cvmix_put_get.o
cvmix_kpp.o depends on cvmix_utils.o
cvmix_math.o depends on cvmix_kinds_and_types.o
cvmix_put_get.o depends on cvmix_kinds_and_types.o
cvmix_put_get.o depends on cvmix_utils.o
cvmix_shear.o depends on cvmix_kinds_and_types.o
cvmix_shear.o depends on cvmix_background.o
cvmix_shear.o depends on cvmix_put_get.o
cvmix_shear.o depends on cvmix_utils.o
cvmix_tidal.o depends on cvmix_kinds_and_types.o
cvmix_tidal.o depends on cvmix_utils.o
cvmix_utils.o depends on cvmix_kinds_and_types.o
Generated dependencies!
make -e -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod USE_DEPS=TRUE
make[2]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_kinds_and_types.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kinds_and_types.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_utils.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_utils.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_put_get.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_put_get.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_background.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_background.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_convection.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_convection.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_ddiff.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_math.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_math.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_kpp.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_shear.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/cvmix_tidal.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal.o
ar -ru /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kinds_and_types.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_background.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_convection.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_math.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_put_get.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_utils.o
ar: creating /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kinds_and_types.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_background.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_convection.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_math.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_put_get.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod
cp /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_utils.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod
make[2]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[1]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include" SRC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared OBJ_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj LIB_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib INC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include UCASE=
make[1]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make -e -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod USE_DEPS=TRUE
make[2]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod' is up to date.
make[2]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod' is up to date.
make[2]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[1]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/makedep.py /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/standalone_deps.d /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include
cvmix_driver.o depends on cvmix_kinds_and_types.mod
cvmix_io.o depends on cvmix_kinds_and_types.mod
cvmix_io.o depends on cvmix_utils.mod
cvmix_bgrnd_BL.o depends on cvmix_kinds_and_types.mod
cvmix_bgrnd_BL.o depends on cvmix_background.mod
cvmix_bgrnd_BL.o depends on cvmix_put_get.mod
cvmix_bgrnd_BL.o depends on cvmix_io.o
cvmix_ddiff_drv.o depends on cvmix_kinds_and_types.mod
cvmix_ddiff_drv.o depends on cvmix_ddiff.mod
cvmix_ddiff_drv.o depends on cvmix_put_get.mod
cvmix_ddiff_drv.o depends on cvmix_io.o
cvmix_kpp_drv.o depends on cvmix_kinds_and_types.mod
cvmix_kpp_drv.o depends on cvmix_kpp.mod
cvmix_kpp_drv.o depends on cvmix_put_get.mod
cvmix_kpp_drv.o depends on cvmix_io.o
cvmix_shear_KPP.o depends on cvmix_kinds_and_types.mod
cvmix_shear_KPP.o depends on cvmix_shear.mod
cvmix_shear_KPP.o depends on cvmix_put_get.mod
cvmix_shear_KPP.o depends on cvmix_io.o
cvmix_tidal_Simmons.o depends on cvmix_kinds_and_types.mod
cvmix_tidal_Simmons.o depends on cvmix_tidal.mod
cvmix_tidal_Simmons.o depends on cvmix_put_get.mod
cvmix_tidal_Simmons.o depends on cvmix_io.o
Generated dependencies!
cd /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src; make /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bin/cvmix USE_DEPS=TRUE
make[1]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/cvmix_driver.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_driver.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/cvmix_io.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_io.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_bgrnd_BL.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_bgrnd_BL.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_shear_KPP.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear_KPP.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_tidal_Simmons.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal_Simmons.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_ddiff_drv.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff_drv.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_kpp_drv.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp_drv.o
gfortran -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bin/cvmix /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_driver.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_io.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_bgrnd_BL.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear_KPP.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal_Simmons.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff_drv.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp_drv.o -L/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib -lcvmix
make[1]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/Makefile USE_NETCDF=TRUE
make[1]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
rm -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_io.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_bgrnd_BL.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear_KPP.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal_Simmons.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff_drv.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp_drv.o
make -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile FC=gfortran FCFLAGS="-O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include" SRC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared OBJ_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj LIB_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib INC_DIR=/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include UCASE=
make[2]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make -e -f /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/shared/Makefile /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod USE_DEPS=TRUE
make[3]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib/libcvmix.a' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kinds_and_types.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_background.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_convection.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_ddiff.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_kpp.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_math.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_put_get.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_shear.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_tidal.mod' is up to date.
make[3]: `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include/cvmix_utils.mod' is up to date.
make[3]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[2]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
cd /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src; make /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bin/cvmix USE_DEPS=TRUE
make[2]: Entering directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/cvmix_io.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_io.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_bgrnd_BL.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_bgrnd_BL.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_shear_KPP.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear_KPP.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_tidal_Simmons.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal_Simmons.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_ddiff_drv.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff_drv.o
gfortran -O2 -ffree-form -J /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj -cpp -Wall -Werror -D_NETCDF -I/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/include -I/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/include -c /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src/drivers/cvmix_kpp_drv.F90 -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp_drv.o
gfortran -o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bin/cvmix /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_driver.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_io.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_bgrnd_BL.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_shear_KPP.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_tidal_Simmons.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_ddiff_drv.o /glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/bld/obj/cvmix_kpp_drv.o -L/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/lib -lcvmix -L/glade/apps/opt/netcdf/4.3.0/gnu/4.4.7/lib -lnetcdff -lnetcdf
make[2]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
make[1]: Leaving directory `/glade/u/home/mlevy/CVMix-testing/checkouts/141019-111440/src'
