## ps
process status.<br>
-a = all<br>
-u = user<br>
-x = show proccess that is not attached to your terminal.<br>
```bash
ps -a -u
ps -a -u -x
pa -aux
ps -aux |grep init
ps -fax
```
## pgerp
show process in background<br>
-c = count
```bash
pgreg sleep
pgrep -c sleep
```
## top
Monitoring live and each 3 second refresh.<br>
press d = change delay time.<br>
z = colorful.<br>
htop = human readable. green color is using user red color is using kernel and system.<br>
btop = is more modern.<br>
```bash
top
htop
btop
```
## jobs
Show the proccess in the backend.
```bash
jobs
jobs -l
```
## kill
kill the process
```bash
kill 1762
kill -9 1762
killall sleep
```
## free
Memory monitoring.<br>
-h = human reable.<br>
-g = base on gig<br>
-m = base on meg<br>
-t = total<br>
```bash
free
free -h
free -th
```
## uptime
Time of your system that it is up.with htop you can check uptime too.<br>
load avarege is base on core of your system.if your load averege is 10% it means 10 % one core cou is used (if you have 1 core ).<br>
-p = pretty
-s = show the system is up from ?.
```bash
uptime
uptime -p
```
## Tools for increasing system load.
stress-ng <br>
sysstat<br>
iotop<br>
nload<br>
iftop<br>
iptraf-ng<br>
```bash
sress-ng -c 4
sress-ng -m 10
htop
```
## vmstat
when install the sysstat you can run vmstat, for monitoring server.
```bash
vmstat
```
## sar
show the cpu situation now.<br>
1 10 = every 1 second 10 times run the command.
```bash
sar 1 10
```

## iotop
show disk statuslike top and htop. speed of writing.
```bash
iotop
```