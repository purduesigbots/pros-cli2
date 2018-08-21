#!/bin/bash

echo =============== UPDATING VERSION ===============
python3 version.py

echo =============== INSTALL DEPENDENCIES ===============
pip3 install --upgrade -r requirements.txt

echo =============== BUILD CLI ===============
python3 build.py bdist_mac

echo =============== COMPRESS ARTIFACTS ===============
cd build
ditto -c -k --sequesterRsrc --keepParent PROS\ CLI.app pros-cli.zip
cd -
