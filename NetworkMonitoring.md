# Network Monitoring
## netstat
it is like ifconfig show the upload and download.
-ie = send and recieve
-s = base on protocol.
-r = show route.
-ntlp = show open port.
```bash 
netstat -ie
netstat -s
netstat -r
netstat -ntlp
```
## iftop
show what packets is outgoing from your syatem.
```bash
iftop
```
## nload
show  totally incomming and out going (tx / rx)<br>
change between interfaces with arrow keys.
```bash
nload
```
## iperf
check and show bandwith between client and server.<br>
-s = for server<br>
-c = for client
```bash
iperf -s # in server vm
iperf -c 192.168.1.2 # in client vm
```
## tcpdump
for capture packet in network.
```bash
tcpdump -i
# tcpdump –list-interfaces
tcdump -ni ens160 src host 10.234.176.34
tcpdump -ni ens192 src host 10.164.6.5
# tcdump -vvv -nn -i interface
```