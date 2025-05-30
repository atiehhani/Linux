## cat
| Command | Description                                                    |
|---------|----------------------------------------------------------------|
| `-n`    | Show line numbers with new lines.                              |
| `nl`    | Show line numbers and ignore new lines without contents.       |
| `tac`   | Display contents of a file in reverse (from end to first).     |
  
```bash
cat -n file1
nl file
tac file1
```
## tr
tr , translate a file
```bash
echo "this is for test 123456" | tr is IS
```
## sort
sort the file base on Alphabet,   
Priority of new line is more, then lowercase is more.  
**-n** = Base on number
```bash
sort file1 > file_sort
sort -n file1
awk '{print $1}' /var/log/nginx/access.log | sort
```
## unique
unique the file but it is usual runned on sort file.  
-c = determined with number of each word.  
-d = determined just word more than one time.  
-u = determined just word  
```bash
sort file1 | uniq
awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
```
## split
shredding the file.
```bash
split -l 10 file1
split -l 10 file1_output
split -b 100MB yes_file
```
## yes
Generate yes in a file
```bash
yes > yes_file
```
## wc
word count.  
wc = given 3 number that first number is line, second one is word and third one number of byte.  
-l = count lines  
```bash
wc file2
wc -l file2
```
## head 
show head of file  
-n = number of lines  
```bash
head -n 20 file1
head 20 file1
```
## tail
show end of file  
-n = show number of lines  
-f = follow    
```bash
tail -n 3 file1
tail 3 file1
tail -f /var/log/nginx/access.log
```
## less 
show file from first it is like cat.  
Enter = line by line shown.  
sspace = page by page shown.  
```bash
less file2
```
## cut
show a unique filed. It is works base on character.  
-d = delimeter  
-f = filed  
```bash
cut file2 -d, -f1
cut -d, -f1 file2 
cut -d, -f1 file2|cut -d: -f1
```
## awk
Search and print lines in files.  
```bash
awk '{print $1}' /etc/passwd
awk -F ":" '{print NR,$2}' /etc/passwd
awk '{print $1"\t"$2}' /etc/passwd
```
## paste 
Merge some files toghter with delimeter.  
```bash
paste file3 file4
paste -d+ file3 file4
```
## sed
Stream Editor:Replace with commad-line  
-i = insert in file and change your file.  
95s = just 95 line number change.  
2d = delete line number 2.  
```bash
sed -i "s/yes/No/g" ssh_config
sed -i "95s/yes/YESSS/g" ssh_config
sed -i "95,96s/yes/YESSS/g" ssh_config
sed "s/\/etc\/ssh\/yes/YESSSS/g" sshd_config
sed '2d' name
sed '/^$/d' name
```
## tee 
Output of command show and write to a file both.
```bash
ls -l | tee lsfile.yxy
```
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
