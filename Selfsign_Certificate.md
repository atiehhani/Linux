```bash
sudo openssl genrsa -out nginx-selfsigned.key 2048
sudo openssl req -new -key nginx-selfsigned.key -out nginx-selfsigned.csr
sudo openssl x509 -req -days 3650 -in nginx-selfsigned.csr -signkey nginx-selfsigned.key -out nginx-selfsigned.crt
 ```
```bash
sudo chmod 644 nginx-selfsigned.crt    # Certificate: readable by all
sudo chmod 644 nginx-selfsigned.csr
``` 
 
 
 
# Verify private key format
```bash
sudo openssl rsa -in nginx-selfsigned.key -check -noout
```
# Verify certificate format
```bash
sudo openssl x509 -in nginx-selfsigned.crt -text -noout
```
# Check if key and certificate match
```bash
sudo openssl x509 -noout -modulus -in nginx-selfsigned.crt | openssl md5
sudo openssl rsa -noout -modulus -in nginx-selfsigned.key | openssl md5
```

