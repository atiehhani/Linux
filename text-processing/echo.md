
## echo
### print any string
print every thing front it.  
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
echo $? = 0   
echo $? = 127   
echo $? = 2   
if output was 0 means previous command was ok otherwise not ok.  
concept of this numbers is diffrence  
```bash
echo $?
```
## output of the commands
0  1  2 > output of the commands is these numbers totally.it means you have output (1) errors(2)and 0 is input.stdin = 0 stdout = 1 stderror = 2.

### show your shell proccess ID 
echo $$ > 1741
this number is your shell proccess ID that you connected
```bash
echo $$
```
