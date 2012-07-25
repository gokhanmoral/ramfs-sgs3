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

#enable kmem interface for everyone
echo 0 > /proc/sys/kernel/kptr_restrict
