#!/bin/bash
sudo su - root
yum install -y amazon-efs-utils
mkdir /efs
efs_id="${efs_id}"
mount -t efs $efs_id:/ /efs
# Edit fstab so EFS automatically loads on reboot
echo $efs_id:/ /efs efs defaults,_netdev 0 0 >> /etc/fstab