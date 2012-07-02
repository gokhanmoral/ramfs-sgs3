#!/sbin/busybox sh
# thanks to hardcore and nexxx
# some parameters are taken from http://forum.xda-developers.com/showthread.php?t=1292743 (highly recommended to read)

#thanks to pikachu01@XDA for thunderbolt scripts and remounts
#/sbin/busybox sh /sbin/ext/thunderbolt.sh
# Remount all partitions with noatime
for k in $(busybox mount | grep relatime | cut -d " " -f3);
do
#sync;
busybox mount -o remount,noatime $k;
done;
mount -o noatime,remount,rw,discard,barrier=0,commit=60,journal_async_commit,noauto_da_alloc,delalloc /system
mount -o noatime,remount,rw,discard,barrier=0,commit=60,journal_async_commit,noauto_da_alloc,delalloc /cache
mount -o noatime,remount,rw,discard,barrier=0,commit=60,journal_async_commit,noauto_da_alloc,delalloc /data

