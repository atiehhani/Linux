#Proxy

```bash
vim /etc/apt/apt.conf.d/95proxies
```
and then
```bash
Acquire::http::Proxy "http://username:password@proxy_server:port/";
Acquire::https::Proxy "http://username:password@proxy_server:port/";
```
-----------------------------------
##proxy for Docker
make directory for proxy:
```bash
sudo mkdir -p /etc/systemd/system/docker.service.d
```
configure proxy:
```bash
sudo nano /etc/systemd/system/docker.service.d/http-proxy.conf
```
and write in it:
```bash
[Service]
Environment="HTTP_PROXY=http://192.168.1.100:8080"
Environment="HTTPS_PROXY=http://192.168.1.100:8080"
Environment="NO_PROXY=localhost,127.0.0.1"
```
then:
```bash
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart docker
```
for ensure to set proxy:
```bash
systemctl show --property=Environment docker
```
##proxy for Ansible
Ansible directly do not use proxy, depend on the tasks and modules like yum , apt , uri , det_url and so on needs.
```bash
- name: Use a proxy to download a file
  hosts: all
  environment:
    http_proxy: http://192.168.1.100:8080
    https_proxy: http://192.168.1.100:8080
  tasks:
    - name: Download file using proxy
      get_url:
        url: https://example.com/file.txt
        dest: /tmp/file.txt
```
