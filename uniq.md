## uniq
unique the file but it is usual runned on sort file.  
-c = determined with number of each word.  
-d = determined just word more than one time.  
-u = determined just word  
```bash
sort file1 | uniq
awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
```
