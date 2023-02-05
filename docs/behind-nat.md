# Note if you use a Firewall / NAT
Kurento binds somehow always to the external IP instead of the local one or `0.0.0.0`. For that reason you need to add your external IP to your interface.

#### Temporary  way (until next reboot)
```
$ ip addr add 144.76.97.34/32 dev ens3
```

#### Permanent way (After building up your BigBlueButton)
Additional IP address can be permanently added to your system by editing the file `/etc/netplan/50-cloud-init.yaml`

Use the command below

```
$ sudo vim /etc/netplan/50-cloud-init.yaml
```

Add following code below `set-name: ens4` (ens4 name depends on device). `addresses` is your external IP

```
addresses: [35.221.137.107/32]
```

Reboot your system and rebuild your bbb-docker, then you can set your external IP permanently

```
$ sudo docker-compose build
$ sudo docker-compose up -d
```


## Ports
Also don't forget to forward all necassary ports listed in https://docs.bigbluebutton.org/admin/configure-firewall.html

