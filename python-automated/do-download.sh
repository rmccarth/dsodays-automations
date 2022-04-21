#!/bin/bash

mkdir -p /tmp/python-libraries
cd /tmp
pip download --dest /tmp/python-libraries django gunicorn
tar zcvf /tmp/python-libraries.tar.gz python-libraries

# cleanup dir
rm -rf python-libraries
