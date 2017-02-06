#!/bin/bash
# Ansible installation on SLES 11.sp3 
# tested on "sles11sp3_v2.box" vagrant box.
# kmonticolo 6.2.17

sudo zypper ar http://download.opensuse.org/repositories/systemsmanagement/SLE_11_SP4/systemsmanagement.repo || exit 2
sudo zypper ar http://download.opensuse.org/repositories/devel:/languages:/python/SLE_11_SP4/devel:languages:python.repo || exit 2
sudo zypper ar http://download.opensuse.org/repositories/server:monitoring/SLE_11_SP4/server:monitoring.repo || exit 2
sudo zypper ar http://download.opensuse.org/repositories/home:/ghostlyrat/SLE_11_SP4/home:ghostlyrat.repo || exit 2
sudo zypper --no-gpg-checks refresh || exit 3
sudo zypper rm -y *python* || exit 4
# sudo zypper rm -y dbus-1-python libxml2-python python-satsolver rpm-python python-xml python-base
sudo zypper in -y python-devel libffi-devel || exit 5
openssl version|grep -q 0.9 && wget https://www.openssl.org/source/openssl-1.0.2k.tar.gz -O -|tar zxf -
cd openssl* || exit 6
/usr/bin/perl ./Configure linux-x86_64 --openssldir=/usr -Wa,--noexecstack -fPIC || exit 7 # -fPIC is important
make && sudo make install || exit 8
cd .. ; wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python || exit 9
openssl version|grep -q 1.0 && sudo easy_install ansible && ansible --version || exit 10
exit 0
