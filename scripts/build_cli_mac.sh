#!/bin/bash

echo =============== UPDATING VERSION ===============
python version.py

echo =============== INSTALL DEPENDENCIES ===============
pip install --upgrade -r requirements.txt

echo =============== BUILD CLI ===============
python build.py bdist_mac

echo =============== COMPRESS ARTIFACTS ===============
cd build
tar -cvf ../proscli.tar.gz PROS\ CLI.app
cd -
