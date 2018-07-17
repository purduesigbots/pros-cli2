#!/bin/bash

echo =============== INSTALLING PYTHON3 ===============

brew install pyenv

if [ $? -ne 0 ]
then
  echo Failed to install pyenv
  exit 1
fi

pyenv install 3.6.5
pyenv local 3.6.5

echo =============== INSTALLING PIP DEPENDENCIES ===============

pip install --upgrade pip
pip install wheel cx_Freeze
