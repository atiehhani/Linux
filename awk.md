## awk
Search and print lines in files.  
```bash
awk '{print $1}' /etc/passwd
awk -F ":" '{print NR,$2}' /etc/passwd
awk '{print $1"\t"$2}' /etc/passwd
```
