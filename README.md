# AURA simulator guide

## For Xcelium:

to build the RTL and run tests using Xcelium, use the following commands:

```
> mkdir aura
> cd aura
> git clone git@gitlab.vlsi.huji.cloud:freddy.gabbay/riscv-grid.git

> cd riscv-grid/pulp
> make checkout

> cp -p ../additinal_files/cb_filter_tb.sv .bender/git/checkouts/common_cells-f18d75f6d6d026a5/test
> cp -p ../additinal_files/stream_register_tb.sv .bender/git/checkouts/common_cells-f18d75f6d6d026a5/test
> cp -p ../additinal_files/sub_per_hash_tb.sv .bender/git/checkouts/common_cells-f18d75f6d6d026a5/test
> cp -p ../additinal_files/apb_fll_tb.sv .bender/git/checkouts/apb_fll_if-30645ac88ad7542f/test
> cp -p ../additinal_files/fpnew_wrapper.sv .bender/git/checkouts/fpu_interco-f206baa74ecb3390/FP_WRAP/


> source amend_files.sh


> make scripts
> make build-xcelium
```
you can use make build-xcelium > build_xcelium.log and then less build_xcelium.log to make sure there is no error

befor you cuntinue, make sure you have the following python tools: pyelftools. if not, install it using:
```
> pip3 install pyelftools
```
now run:
```
cd ../

> export PULP_RISCV_GCC_TOOLCHAIN=/opt/riscv/
> export PATH=/opt/riscv/bin/:$PATH
> source pulp/setup/vsim.sh
> source pulp-runtime/configs/pulp.sh


> source set_var_and_config.sh

```

if there was no error so far, the model is successfully built

to run hello, run the following commands:

```
> cd regression_tests/hello
> make clean all run-xcelium
```

to run with gui, run:

```
> make clean all run-xcelium gui=1
```
 
at the Xcelium propmt run: run


to run other tests, simply enter the desired test directory and run:

```
> make clean all run-xcelium

```
 or: 

```
> make clean all run-xcelium gui=1

```

to run with gui



## For Questasim:

to build the RTL and run tests using Questasim, use the following commands:

```
> mkdir aura
> cd aura
> git clone git@gitlab.vlsi.huji.cloud:freddy.gabbay/riscv-grid.git

> cd riscv-grid/pulp
> make checkout

> cp -p ../additinal_files/fpnew_wrapper.sv .bender/git/checkouts/fpu_interco-f206baa74ecb3390/FP_WRAP/

> make scripts
> make build
```
you can use make build > build_questa.log and then less build_questa.log to make sure there is no error


now run:
```
cd ../

> export PULP_RISCV_GCC_TOOLCHAIN=/opt/riscv/
> export PATH=/opt/riscv/bin/:$PATH
> source pulp/setup/vsim.sh
> source pulp-runtime/configs/pulp.sh

```

if there was no error so far, the model is successfully built

to run hello, run the following commands:

```
> cd ../regression_tests/hello
> make clean all run
```

to run with gui, run:

```
> make clean all run gui=1
```
 
at the Questasim propmt run: run6ms


to run other tests, simply enter the desired test directory and run:

```
> make clean all run

```
 or: 

```
> make clean all run gui=1

```

to run with gui
