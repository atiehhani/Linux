```bash
systemctl stop rsyslog.service


/logs/**/*log /logs/**/**/*log /logs/**/**/**/*log /logs/**/**/**/**/*log /logs/**/**/**/**/**/*log /logs/**/**/**/**/**/**/*log{
    prerotate
       systemctl stop rsyslog
    endscript
    daily
    copytruncate
    #size 500M
    rotate  30
    create 0644 root root
    compress
    dateext
    dateformat  -%Y%m%d
    postrotate
    sleep 2
    systemctl restart rsyslog.service
endscript
    lastaction
      find /logs/ -type f -mtime +30 -delete ; chmod -R a+r /logs
    endscript
}
```    
