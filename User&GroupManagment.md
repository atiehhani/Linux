# User and Gourp
## Create user
Each user have a ID user.  
A user can be member of one or more groups.  
Each user have some primary groups that is more priority.  
**id** = show uid , gid , groups.  
root user is God of system with 0 id.  
root user can check other users id.  
normal users that created in liux start from 1000 id. ID under 1000 is for system users.  
system users is related to the service and you can not login with them.  
**cat /etc/passwd** = show list of users in system.  
**useradd** = can create a new user. It works better.  
**adduser** = can create anew user too.<br> 
**-d /mnt/user1** = determine user home directory.  
**-m** = with this switch you can create user home directory as same time.  
**-s /bin/bash** = determine user shell. If not using -s consider /bin/sh by default.  
**-p** = for setting password for new user. encrypt password.  
**-c ""** = for write comment.  
**passwd** = set password for user.<br>
**TIP:**<br>
**With creating each user, created these files .bash_logout  .bashrc  .profile in home directory of new user.**  
**Every thing in this path placed in the new user`s directory: /etc/skel** 
```bash
id
cat /etc/passwd
useradd reza
passwd reza 
tail -n 3 /etc/passwd
useradd -m -d /mnt/user1 user1
useradd -m -d /mnt/user2 -c "Admin User" user2
useradd -m -d /mnt/user3 -c "Admin User" -s /bin/bash user3
ls -a
```

## Modify user
Modifying user`s profile with usermod.
-d = change home directory  
-g = change gid GROUP ( primary group ). 
-G = add GROUP to additional group and remove previous group.  
-aG = append GROUP
-L = lock the user  
-U = unlock the user.  
```bash
usermod -s /bin/bash radin
usermod -c "NOC User" radin
usermod -m -d /opt/radin radin
usermod -g milad radin
usermod -G reza radin
usermod -aG sudo radin
```
## Delete user
Delete user.
**userdel** = delete user.  
**-f** = force delete user.
**-r** = remove home directory and mail spool.
```bash 
userdel -f -r reza
```

## Create group
Each group have group ID.  
**groupadd** = add group.  
**-g** = set gid group.  
**/etc/group** = path of groups.
```bash
groupadd group1
groupadd -g 1100 group2
```
## Modify group
Modifying group.
**-n** = rename the group.
**-g** = change gid.
```bash
groupmod -n newgroup group1
groupmod -g 1200 newgroup
tail -n 5 /etc/group
```
## Delete group
Delete group.
we can not group when it is primary group of user.
```bash
groupdel newgroup
```
## Password
**/etc/shadow** = stored user`s password encrypted.  
<strong><code>!</code></strong> = means password is not setting yet.  
<strong><code>chage</code></strong> = change age, modifying user’s password.  
<strong><code>-l</code></strong> = list profile’s password of user.

```bash
chage -l sanaz
chage sanaz
```