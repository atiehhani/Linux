## Application logs with copytruncate

If your app cannot reopen log files:
```bash
/var/lotus/logs/*.log {
    daily
    rotate 15
    copytruncate
    compress
    delaycompress
    notifempty
    create 0644 root root
}
```
