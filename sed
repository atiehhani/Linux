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
