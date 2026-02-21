```bash
vim /etc/sysctl.conf
```

CP keepalive settings  
net.ipv4.tcp_keepalive_time = 600  
net.ipv4.tcp_keepalive_intvl = 60  
net.ipv4.tcp_keepalive_probes = 5  

```bash
Sysctl -p
```
