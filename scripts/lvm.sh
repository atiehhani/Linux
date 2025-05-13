#ایجاد دو پارتیشن (مثلاً با fdisk) برای استفاده در LVM
fdisk /dev/sdb
# n → ساخت پارتیشن جدید
# t → نوع پارتیشن را به 8e (Linux LVM) تغییر بده
# w → ذخیره و خروج
#تبدیل پارتیشن‌ها به Physical Volume
pvcreate /dev/sdb1
#ساخت Volume Group
vgcreate my_vg /dev/sdb1
#ساخت Logical Volume
lvcreate -L 500M -n my_lv my_vg
#فرمت کردن LV
mkfs.ext4 /dev/my_vg/my_lv
#مانت کردن آن روی یک مسیر
mkdir /mnt/my_lvm
mount /dev/my_vg/my_lv /mnt/my_lvm
#------------------------------------
#بررسی حجم فعلی
lvdisplay /dev/my_vg/my_lv
#افزایش حجم Logical Volume
lvextend -L +200M /dev/my_vg/my_lv
#یا به‌صورت کلی به 700MB:
lvextend -L 700M /dev/my_vg/my_lv
#گسترش فایل‌سیستم (ext4)
resize2fs /dev/my_vg/my_lv
#if xfs file syatem
xfs_growfs /mnt/my_lvm
df -h /mnt/my_lvm
