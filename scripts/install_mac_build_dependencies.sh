#!/bin/bash

echo =============== INSTALLING PYTHON3 ===============

brew upgrade python

if [ $? -ne 0 ]
then
  echo Failed to install python
  exit 1
fi

echo =============== INSTALLING PIP DEPENDENCIES ===============

pip3 install --upgrade pip
pip3 install wheel cx_Freeze
