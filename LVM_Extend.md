
--------------------------------------- Scan for new disks --------------------------------------------------

for i in {1..30}; do echo "- - - " > /sys/class/scsi_host/host$i/scan ; done 

or …

echo " - - - " > /sys/class/scsi_host/host0/scan
echo " - - - " > /sys/class/scsi_host/host1/scan
echo " - - - " > /sys/class/scsi_host/host2/scan
---------------------------------------Partion New Disk--------------------------------------------------
# List disks
fdisk -l

# Partition the new disk
fdisk /dev/sdd
# Follow the fdisk steps: n -> p -> 1 -> Enter -> Enter -> t -> 8e -> w

# Verify the partition
fdisk -l
-------------------------------------------------------LVM-----------------------------------------------------------------
# Create a physical volume
pvcreate /dev/sdd1

# Check volume groups
vgs

# Extend the volume group
vgextend VG01 /dev/sdd1

# Check logical volumes
lvs

# Extend the logical volume
lvextend -l +100%FREE /dev/mapper/VG01-LVAnis
------------------------------------------------------------FileSystem-------------------------------------------------
# Resize the file system
# For ext4:
resize2fs /dev/mapper/VG01-LVAnis
# For xfs:
xfs_growfs /dev/mapper/VG01-LVAnis

# Verify disk space
df -h
----------------------------------------------------------------------------------------------------------------------------
