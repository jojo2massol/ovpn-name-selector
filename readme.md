# OpenVPN server selector
This script edit your openvpn file to select an other name server for your VPN.

This is useful to switch country easily in the command line.
## Cyberghost
Current configuration is made for Cyberghost VPN, but you can set your own nameservers in the CSV

The current CSV file lists all the nameservers for Cyberghost, with regions you can select with the selector.
## Usage : 
```sh
./selector.sh [SourceFile.ovpn] [TargetFile.ovpn]
```
