## find
Search file.
-iname = not case sensitive.
-type f = just file type.
-cmin = change minute
```bash
find / -name hani
find / -iname hani
find / -iname hani -type f
find / -iname *.pdf -exec cp {} /home \;
find / -iname *.pdf -exec rm -rf {} \;
```
## file
Show details of files.
```bash
file /var/log/dmesg.1.gz
file /var/log/auth.log
```
## zip & gzip & unzip & gunzip
compress the file.
-9 = compress better.
-r = recursive
```bash
zip file_zip.zip file.txt
zip -r dir1
unzip file_zip.zip
gzip -9 file.txt
gunzip file.txt.gz
```
## xz & unxz
compress files and it is better and newer.

## tar
archive the files.
-cvf = for create.
-xvf = for extract.
-cvzf = for gzip.
```bash
tar -cvf dir.tar dir1 
tar -xvf dir.tar
tar -cvzf dir.tar.gz
```
## dd 
It is like copy and make file to check read & write your system.
bs = BlockSize
```bash
dd if=file.txt of=/tmp/file_dd.txt
dd if=/dev/zero of=/tmp/rand_file bs=1M count=1000
```