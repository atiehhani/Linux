## grep
Search and show some pattern from file or files.  
-i = do not case sensitive.  
-n = show line number of that pattern.  
-c = show count without showing pattern and line number.  
-v = show on the contrary  
-r = recersive mode  
(-rni)  
-B1 or -B2 or ... = show your pattern with 1 or 2 ,.. before line.  
-A1 or -A2 or ... = show your pattern with 1 or 2 ,.. after line.  
-C2 = center, 2 after and 2 before.  
^ = first of line.  
& = end of line.  
| Option       | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| `-i`         | Do not case sensitive (ignore case).                                        |
| `-n`         | Show line number of the matched pattern.                                    |
| `-c`         | Show count only, without displaying the matching line(s).                   |
| `-v`         | Invert match (show lines that **do not** match the pattern).                |
| `-r`         | Recursive mode, search directories recursively.                             |
| `-rni`       | Combine recursive, line number, and ignore case options.                    |
| `-B1`/`-B2`  | Show 1 or 2 lines **before** the matched pattern.                           |
| `-A1`/`-A2`  | Show 1 or 2 lines **after** the matched pattern.                            |
| `-C2`        | Show 2 lines **before and after** (context around) the pattern.             |
| `^`          | Match at the **beginning** of the line.                                     |
| `$`          | Match at the **end** of the line.                                           |

```bash
grep "YES" sshd_config
grep -i "YES" sshd_config
grep -i -n -c "YES" sshd_config file1
grep -i -n -r "YES" /etc/ssh/
grep -n -C2 "YES" sshd_config | grep forwarding | wc -l > file1
grep -v ^# sshd_config
grep -v ^# sshd_config | grep -v ^$
```
