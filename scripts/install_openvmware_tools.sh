#!/bin/bash

wget -P /tmp http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-DSA-KEY.pub
wget -P /tmp http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub

yum -y install open-vm-tools


systemctl restart vmtoolsd
