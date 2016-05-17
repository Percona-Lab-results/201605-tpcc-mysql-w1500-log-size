sync
sysctl -q -w vm.drop_caches=3
echo 3 > /proc/sys/vm/drop_caches
ulimit -n 1000000
#echo never > /sys/kernel/mm/transparent_hugepage/enabled
#echo always > /sys/kernel/mm/transparent_hugepage/enabled
#LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1 
numactl --interleave=all bin/mysqld --defaults-file=/etc/my.ps57.cnf --datadir=/data/sam/ps57 --basedir=$PWD --user=root --ssl=0 --innodb-buffer-pool-instances=8 --innodb-max-dirty-pages-pct-lwm=0 
#--thread_handling=pool-of-threads --thread_pool_size=112
# --early-plugin-load=keyring_file.so --keyring_file_data=/tmp/kr_data --innodb-thread-concurrency=64
#--innodb_buffer_pool_size=10G
#--performance-schema=OFF
