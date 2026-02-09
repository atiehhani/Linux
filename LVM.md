####ایجاد دو پارتیشن (مثلاً با fdisk) برای استفاده در LVM
```bash
fdisk /dev/sdb
```
** n → ساخت پارتیشن جدید
** t → نوع پارتیشن را به 8e (Linux LVM) تغییر بده
** w → ذخیره و خروج
####تبدیل پارتیشن‌ها به Physical Volume
```bash
pvcreate /dev/sdb1
```
####ساخت Volume Group
```bash
vgcreate my_vg /dev/sdb1
```
####ساخت ogical Volume

```bash
lvcreate -L 500M -n my_lv my_vg
```
####فرمت کردن LV

```bash
mkfs.ext4 /dev/my_vg/my_lv
```
####مانت کردن آن روی یک مسیر
```bash
mkdir /mnt/my_lvm
mount /dev/my_vg/my_lv /mnt/my_lvm
```
------------------------------------
####بررسی حجم فعلی
```bash
lvdisplay /dev/my_vg/my_lv
```
####افزایش حجم Logical Volume
```bash
lvextend -L +200M /dev/my_vg/my_lv
```
####یا به‌صورت کلی به 700MB:
```bash
lvextend -L 700M /dev/my_vg/my_lv
```
####گسترش فایل‌سیستم (ext4)
```bash
resize2fs /dev/my_vg/my_lv
#if xfs file syatem
xfs_growfs /mnt/my_lvm
```
```bash
cp /etc/fstab /etc/fstab.orig
echo "/dev/sdb   /mnt/my_lvm      xfs    defaults    0 2" >> /etc/fstab
mount -a
```
```bash
df -Th
df -h /mnt/my_lvm
```
