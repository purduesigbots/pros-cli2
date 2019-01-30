## This project has been archived.
Development is currently being done purduesigbots/pros-cli (PROS CLI 3). This repository is now maintained as an archive and no further development will be done.

# PROS CLI

PROS is the only open source development environment for the VEX EDR Platform.

This project provides all of the project management related tasks for PROS. It is currently responsible for:
 - Downloading kernel templates
 - Creating, upgrading projects
 - Flashing binaries to the cortex

This project is built in Python 3.5, and executables are built on a modified version of cx_Freeze.

## Installing for development
PROS CLI can be installed directly from source with the following prerequisites:
 - Python 3.5
 - PIP (default in Python 3.5)
 - Setuptools (default in PYthon 3.5)

Clone this repository, then run `pip install -e <dir>`. Pip will install all the dependencies necessary.

## About this project
This python project contains 4 modules: proscli, prosconductor, prosconfig, and prosflasher

### proscli
proscli contains the interaction logic for the actual end user experience using the Click framework and
describes all of the commands available.

### prosconductor
prosconductor contains the backend logic for managing projects. It is responsible for downloading projects through a
provider (GitHub provider is currently the only provider, but can be extended)


### prosconfig
prosconfig contains classes which represent configuration files, such as template.pros, project.pros, and cli.pros.
These files are serialized by jsonpickle.

### prosflasher
prosflasher contains the logic necessary to upload binaries to the VEX Cortex Microcontroller. In the future, we'd like
to reinclude the ability to manipulate the file system.
