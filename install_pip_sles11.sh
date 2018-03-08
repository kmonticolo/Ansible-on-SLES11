#!/bin/bash

curl -O https://pypi.python.org/packages/source/p/pip/pip-1.2.1.tar.gz
tar xvfz pip-1.2.1.tar.gz
cd pip-1.2.1
zypper install python-setuptools
python setup.py install
ln -sfn /usr/local/bin/pip /usr/bin/pip
#pip install --upgrade awscli
pip install --upgrade  ansible
cd ..
