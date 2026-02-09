###Umount LV for lotus
sudo umount /dev/mapper/lotus-lv01

###Disable VG
sudo vgchange -an lotus

### delete VG lotus
sudo vgremove lotus

### Delete LVM from partition
sudo pvremove /dev/sdb1

### Add /dev/sdb1 to VG rl
sudo pvcreate /dev/sdb
sudo vgextend rl /dev/sdb1

### Checking
sudo vgs

### Increase root
sudo lvextend -l +100%FREE /dev/rl/root 

###df Th
sudo xfs_growfs /dev/mapper/rl-root  ##xfs
sudo resize2fs /dev/mmapper/rl-root  ##ext4
df -Th
sudo vgs
sudo lvs
lsblk
