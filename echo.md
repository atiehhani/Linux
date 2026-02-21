
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
### show your shell proccess ID 
echo $$ > 1741
this number is your shell proccess ID that you connected
```bash
echo $$
```
