# Ansible-on-SLES11

 
 tested on "sles11sp3_v2.box" vagrant box.
 
 kmonticolo 3.8.16
 
 
sudo su

zypper ar http://download.opensuse.org/repositories/systemsmanagement/SLE_11_SP4/systemsmanagement.repo

zypper ar http://download.opensuse.org/repositories/devel:/languages:/python/SLE_11_SP4/devel:languages:python.repo

zypper ar http://download.opensuse.org/repositories/server:monitoring/SLE_11_SP4/server:monitoring.repo

zypper ar http://download.opensuse.org/repositories/home:/ghostlyrat/SLE_11_SP4/home:ghostlyrat.repo

zypper --no-gpg-checks refresh 

zypper in -f python-devel libffi-devel 

1

y

wget https://www.openssl.org/source/old/1.0.1/openssl-1.0.1e.tar.gz

tar zxf openssl*; cd openssl*

/usr/bin/perl ./Configure linux-x86_64 --openssldir=/usr -Wa,--noexecstack -fPIC

 make && make install
 
 
 wget  https://bootstrap.pypa.io/ez_setup.py -O - | python
 
 easy_install ansible
 
 # that's all
 ansible --version
 ansible 2.2.1.0
