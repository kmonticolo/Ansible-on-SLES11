# Ansible-on-SLES11

Ansible on SLES boilerplate. 
It installs Ansible on SLES 11 SP3 using easy_install and Python 2.7, libffi-devel, openssl-1.0.x as a dependencies. 

Tested on "sles11sp3_v2.box" vagrant box.

Installation will take approx. 1 minute with included OpenSSL RPMs or 3 minutes with complation from sources.

OpenSSL RPMs were created for convenience using rpmbuild and http://www.thegeekstuff.com/2015/02/rpm-build-package-example/


 
- wget -q https://raw.githubusercontent.com/kmonticolo/Ansible-on-SLES11/master/ansible_sles11.sh -O - | sudo bash

 
