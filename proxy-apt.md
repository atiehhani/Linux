```bash
vim /etc/apt/apt.conf.d/95proxies
```
and and
Acquire::http::Proxy "http://username:password@proxy_server:port/";
Acquire::https::Proxy "http://username:password@proxy_server:port/";
