#!/bin/bash

echo =============== INSTALLING PYTHON3 ===============

brew upgrade pyenv

if [ $? -ne 0 ]
then
  echo Failed to install pyenv
  exit 1
fi

pyenv install 3.6.5

echo =============== INSTALLING PIP DEPENDENCIES ===============

pip3 install --upgrade pip
pip3 install wheel cx_Freeze