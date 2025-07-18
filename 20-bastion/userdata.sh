#!/bin/bash

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform

sudo growpart /dev/nvme0n1 4
sudo lvextend -L +10G /dev/RootVG/homeVol

sudo xfs_growfs /home