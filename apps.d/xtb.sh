nproc=`grep ^cpu\\scores /proc/cpuinfo | uniq |  awk '{print $4}'`
export OMP_NUM_THREADS=$nproc
export MKL_NUM_THREADS=$nproc
export XTBHOME=$HOME/apps/xtb
source $XTBHOME/share/xtb/config_env.bash
