## 1. What is logrotate?

logrotate is a Linux utility that:

Manages log files automatically.

Rotates (archives) old logs, compresses them, removes old logs, and prevents logs from growing indefinitely.

Can be scheduled via cron to run daily, weekly, monthly, etc.

It’s extremely useful for servers with lots of logs, e.g., web servers, app servers, microservices.

## 2. How logrotate Works

Rotation: Moves the current log to a new file (e.g., app.log.1) and creates a fresh app.log.

Compression: Optional, usually with gzip (e.g., app.log.1.gz).

Retention: Keep only N old logs.

Post-rotate actions: Restart services if needed, so logs are correctly reopened.

## 3. logrotate Configuration Files

There are two levels of configuration:

### 1. Global config: ``` /etc/logrotate.conf ```

Contains general defaults and includes /etc/logrotate.d/ for service-specific configs.

### Example:
``` bash
weekly
rotate 4
create
include /etc/logrotate.d
```
### 2. Per-service configs: ```/etc/logrotate.d/ ```

One file per service, e.g., nginx, httpd, mysql, lotus, etc.

Allows custom rotation rules per service.
