[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a2137ecfadc44b678a10c41c105d4a5e)](https://www.codacy.com/app/kmonticolo/Ansible-on-SLES11?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=kmonticolo/Ansible-on-SLES11&amp;utm_campaign=Badge_Grade)

# Ansible-on-SLES11

Ansible on SLES boilerplate. 
It installs Ansible on SLES 11 SP3 using easy_install and Python 2.7, libffi-devel, openssl-1.0.x as a dependencies. 

Tested on "sles11sp3_v2.box" vagrant box. Usage: "vagrant up; vagrant provision"

Installation will take approx. 2 minutes with included OpenSSL RPMs or 4 minutes with complation from sources.

OpenSSL RPMs were created for convenience using rpmbuild and http://www.thegeekstuff.com/2015/02/rpm-build-package-example/


 
- wget -q https://raw.githubusercontent.com/kmonticolo/Ansible-on-SLES11/master/ansible_sles11.sh -O - | sudo bash

 
