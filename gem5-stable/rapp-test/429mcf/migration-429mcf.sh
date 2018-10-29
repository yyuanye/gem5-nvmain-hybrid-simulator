HOME=/home/yyuanye/specCPU2006/benchspec/CPU2006/429.mcf
REPATH=../../../../
RENVMAINPATH=../../..
$REPATH/build/X86/gem5.opt \
--stats-file=gem5-DRAMCache-stats.log  \
$REPATH/gem5-nvmain-hybrid-simulator/gem5-stable/configs/example/se-ye.py \
--cpu-type=detailed   \
--cpu-clock=2GHz        \
--mem-type=nvmain --nvmain-config=$RENVMAINPATH/nvmain/Config/Hybrid_example.config         \
--maxinsts=10000000000       \
--caches    \
--l1i_size 32kB --l1d_size 32kB     \
--l2cache --l2_size 256kB    \
--l3cache --l3_size 1MB \
--cmd="$HOME/exe/mcf_base.amd64-m64-gcc43-nn" --options="$HOME/data/ref/input/inp.in" -n 1        \
