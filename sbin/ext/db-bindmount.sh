#!/sbin/busybox sh

mount --bind /.secondrom/media/.secondrom/data /data
mkdir /data/media
mount --bind /.secondrom/media /data/media
