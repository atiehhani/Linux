## sign in bash
### some command with ;
; do not check whether command is run correctly or not
```bash 
ls /home ; ls /tmp
ls /home ; ls/tmp ; cd /var
```
### some command with AND
&& > this one checked first command and then next one
```bash
apt update && apt install nginx
```
### some command with OR
||  > this one checked first command and then ignore next one
```bash
apt update && apt install nginx
```
### > >> |
sign > write output in a file.
sign >> appent output in a file.
sign | output of a command give to input of other command.
```bash
echo  "devops | linux" > file1
echo ubuntu >> file1
cat docker-compose.yml | wc -l
```

### run previous command 
up key of arrow keys or use !! 
```bash
!!
```
