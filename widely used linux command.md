# Some commands used in devops

## put # in command
Do not work command with # first of command 
```bash 
# ls
ls -l # echo
```

## ls
-1 = show per line
```bash
ls -lash
ls -ltrh
ls -a1
```
show hidden file
-a --all
```bash
ls -a
```
## echo
### print any string
print every thing front it 
-n > without enter 
```bash
echo devops
echo devops \| linux
echo devops \\ linux
echo "devops | linux"
echo -n "devops | linux"
echo -e "devops \n linux"
```
### checking correctness previous command
echo $? = 0 /
echo $? = 127 /
echo $? = 2 /
if output was 0 means previous command was ok otherwise not ok
concept of this numbers is diffrence
```bash
echo $?
```
### show your shell proccess ID 
echo $$ > 1741
this number is your shell proccess ID that you connected
```bash
echo $$
```
## sign in bash
### some command wuth ;
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

## pwd
### print working directory
pwd > when you need to know where are you now.
```bash
pwd
```
## history of commands
### history
history > show history of commands that stores in .bash_history
```bash
history
ls -a
cat .bash_history
```
### run previous command 
up key of arrow keys or use !! 
```bash
!!
```
### run a command that used before in terminal
searching with up key of arrow keys or use !string 
```bash
!cat
!pi
```
### searching in previous commands
ctrl + r > come to reverse-i-search 
then type your considered command like cat
show latest command first
then with crtl + r you can search
```bash
R
cat
R
```
### clear history
with history -c delete command in history but remain in .bash_history file
```bash
history -c
```
### clear command in .bash_history
```bash
> .bash_history
```
## uname
uname > show what is your OS 
uname -r > show kernel release
uname -i > show hardware platform 
uname -a > show all
```bash
uname
uname -r
uname -i
uname -a
```
## man
man is description of command guid for use.
-w > show path of that man file.
-f > short description
```bash
man ls
man -w ls
man -f ls
```
## output of the commands
0  1  2 > output of the commands is these numbers totally.it means you have output (1) errors(2)and 0 is input.stdin = 0 stdout = 1 stderror = 2.
