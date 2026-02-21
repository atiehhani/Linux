## history of commands
### history
history > show history of commands that stores in .bash_history
```bash
history
ls -a
cat .bash_history
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
