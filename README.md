# Ansible-on-SLES11

Installs Ansible on SLES 11 SP3 using easy_install and Python 2.7, libffi-devel, openssl-1.0.x as a dependencies. 

Tested on "sles11sp3_v2.box" vagrant box.

In case of any errors check exit code using "echo $?" 
 
- wget -q https://raw.githubusercontent.com/kmonticolo/Ansible-on-SLES11/master/ansible_sles11.sh -O - | sudo bash
 
