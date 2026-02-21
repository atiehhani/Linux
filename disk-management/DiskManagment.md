# Disk Management
For using the disk, You have 3 stage in linux.  
1-Detect the hard drive after connecting.  
2-Partitioning the hard drive.  
3-Formating the disk.  
## Scaning disk
```bash
for host in /sys/class/scsi_host/*; do echo "- - -" | sudo tee $host/scan; ls /dev/sd* ; done
```

## Checking disks and partitions.
| tool           |       description                         |
| -------------- | ------------------------------------------|
| `lsblk`        | نمایش بلوک‌ها، پارتیشن‌ها و مانت پوینت‌ها |
| `fdisk -l`     | نمایش جزئیات دیسک‌ها و پارتیشن‌ها         |
| `df -h`        | نمایش فضای اشغال‌شده پارتیشن‌ها           |
| `du -sh /path` | نمایش فضای اشغال‌شده یک مسیر خاص         |

```bash
lsblk
fdisk -l
df -h
du -sh /home
```

## Partitioning disk
partitioning have diffrent models in linux like:  
MBR - GPT 

| tool     |          application                       |
| -------- | ------------------------------------------ |
| `fdisk`  | پارتیشن‌بندی دیسک‌های MBR                  |
| `gdisk`  | پارتیشن‌بندی GPT                           |
| `parted` | پشتیبانی از دیسک‌های بزرگ‌تر، محیط تعاملی |

**Not existed Primary and Extened partition in gdisk.**
```bash
fdisk /dev/sdb
gdisk /dev/sdb
```
Switches for fdisk and gdisk:
**h** help for fdisk.
**?** help for gdisk.
| switch   | application     |
| -------- | --------------- |
| t        | type            |
| d        | delete          |
| w        | write           |
| g        | create gpt      |
| n        | new partition   |
| p        | print           |

**fdisk /dev/sdb**  Changes will remain in memory only.  

##  Formatting partition and FileSystem
| file system |  command             |
| ---------- | --------------------- |
| ext4       | `mkfs.ext4 /dev/sdb1` |
| xfs        | `mkfs.xfs /dev/sdb1`  |
| swap       | `mkswap /dev/sdb2`    |

| command        | application                |
| ------------ | ---------------------------- |
| `blkid`      | نمایش UUID پارتیشن‌ها        |
| `mount`      | نمایش مانت‌ها                |
| `tune2fs -l` | نمایش اطلاعات فایل‌سیستم ext |

**mkfs.ext4**  and **mkfs -t ext4** both are same. 
 
```bash
mkfs.ext4 /dev/sdb2
blkid
```
## Mount
When you mount the disk to a folder,It is temporary and after reboot system you should mount again,then you must wite it to **/etc/fstab** file.
mount with partition **UUID** is best beacaus name of your disk may change but UUID is always fixed.
**ls -l /dev/disk/by-uuid/** = list of UUID.  

| stage                 | command                     |
| -------------------   | --------------------------- |
| ساخت دایرکتوری مانت  | `mkdir /mnt/data`          |
| مانت                  | `mount /dev/sdb1 /mnt/data` |
| مانت دائمی     |           ویرایش فایل `/etc/fstab` |

```bash
mount /dev/sdb1 /DATA_SDB
umount /dev/sdb1
mount -a
```



## LVM
| name                 | description                   |
| -------------------- | ---------------------------   |
| PV (Physical Volume) | دیسک خام                     |
| VG (Volume Group)    | گروهی از PV ها               |
| LV (Logical Volume)  | شبیه پارتیشن قابل مانت کردن |

```bash
pvcreate /dev/sdb1
vgcreate myvg /dev/sdb1
lvcreate -L 10G -n myvol myvg
mkfs.ext4 /dev/myvg/myvol
mount /dev/myvg/myvol /mnt
```
## Checking and Maintenance
```bash
fsck /dev/sdb1
```
