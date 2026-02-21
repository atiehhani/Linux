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
