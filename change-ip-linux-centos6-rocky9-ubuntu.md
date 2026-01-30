# Change IP Address in Linux (CentOS 6 | Rocky Linux 9.5 | Ubuntu)

This document describes standard and practical methods to change IP addresses
on different Linux distributions commonly used in server environments.
---
### 1. Change IP Address in CentOS 6

CentOS 6 uses legacy network scripts for network configuration.
---
#### 1.1 Identify Network Interface

```bash
ifconfig
```

or:
```bash
ip addr
```
Common interface names:
eth0
eth1
#### 1.2 Edit Network Configuration File
```bash
vi /etc/sysconfig/network-scripts/ifcfg-eth0
#### 1.3 Configure Static IP
Example configuration:
```bash
DEVICE=eth0
TYPE=Ethernet
ONBOOT=yes
BOOTPROTO=static

IPADDR=192.168.1.100
NETMASK=255.255.255.0
GATEWAY=192.168.1.1
DNS1=8.8.8.8
DNS2=8.8.4.4
#### 1.4 Restart Network Service
```bash
service network restart
```
or:
```bash
ifdown eth0 && ifup eth0
```
#### 1.5 Verification
```bash
ifconfig eth0
route -n
ping 8.8.8.8
```
#### 1.6 Temporary IP Change (Not Persistent)
```bash
ifconfig eth0 192.168.1.100 netmask 255.255.255.0
route add default gw 192.168.1.1
```
⚠️ This configuration will be lost after reboot.
### 2. Change IP Address in Rocky Linux 9.5
Rocky Linux 9.5 uses NetworkManager.
#### 2.1 List Network Connections
```bash
nmcli con show
```
Example output:
NAME      UUID                                  TYPE      DEVICE
ens192    xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx  ethernet  ens192
#### 2.2 Configure Static IP
Assumptions:
IP: 192.168.1.100/24
Gateway: 192.168.1.1
DNS: 8.8.8.8, 8.8.4.4
```bash
nmcli con mod ens192 ipv4.method manual
nmcli con mod ens192 ipv4.addresses 192.168.1.100/24
nmcli con mod ens192 ipv4.gateway 192.168.1.1
nmcli con mod ens192 ipv4.dns "8.8.8.8 8.8.4.4"
```
#### 2.3 Apply Changes
```bash
nmcli con down ens192
nmcli con up ens192
```
or without full disconnect:
```bash
nmcli device reapply ens192
```
#### 2.4 Verification
```bash
ip a show ens192
ip route
resolvectl status
ping 8.8.8.8
```
#### 2.5 Revert to DHCP
```bash
nmcli con mod ens192 ipv4.method auto
nmcli con down ens192 && nmcli con up ens192
```

#### 2.6 Edit Configuration File (If Required)
```bash
vi /etc/NetworkManager/system-connections/ens192.nmconnection
```
[ipv4]
method=manual
addresses=192.168.1.100/24
gateway=192.168.1.1
dns=8.8.8.8;8.8.4.4;
Apply permissions and restart:
```bash
chmod 600 ens192.nmconnection
```

```bash
systemctl restart NetworkManager
```
### 3. Change IP Address in Ubuntu Server
Ubuntu Server (18.04 and newer) uses Netplan.
#### 3.1 Identify Network Interface
```bash
ip a
```
Common names:
ens160
eth0
#### 3.2 Edit Netplan Configuration
```bash
vi /etc/netplan/01-netcfg.yaml
```
or:
```bash
vi /etc/netplan/00-installer-config.yaml
#### 3.3 Configure Static IP (Netplan)
Example:
```bash
network:
  version:lkok i'm 2
  renderer: networkd
  ethernets:
    poo
        - 192.168.1.100/24
      gateway4: 192.168.1.1
      nameservers:
        addresses:
          - 8.8.8.8
          - 8.8.4.4
```
#### 3.4 Apply Configuration
```bash
netplan apply
```
Test safely:
```bash
netplan try
```
#### 3.5 Revert to DHCP
```bash
dhcp4: yes
Then:
```bash
netplan apply
#### 3.6 Verification
```bash
ip a
ip route
systemd-resolve --status
ping 8.8.8.8
```
Important Notes for Server Environments
SSH connections may be interrupted during IP change
Always verify subnet and gateway
Keep console access (ILO / KVM / vSphere) available
Backup configuration files before changes
Advanced Scenarios (Out of Scope)
Multiple IP addresses on one interface
VLAN configuration
Network bonding
IP change without SSH disconnect
Automation with Ansible
These can be documented separately if required.

---





