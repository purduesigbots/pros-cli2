#!/bin/bash

root=pkg/ROOT
scripts=pkg/scripts
identifier=edu.purdue.cs.pros.pros-cli

echo =============== SETUP ENVIRONMENT ===============
mkdir -p $root $scripts

echo =============== CREATE SCRIPTS ===============
cat << EOF > $scripts/preinstall
#!/bin/sh
if [ ! -d /usr/local/bin ]; then
  mkdir -p /usr/local/bin
fi
# silently uninstall previous version
if [ -e /usr/local/bin/pros ]; then
  rm -rf /Applications/PROS\ CLI.app
fi
EOF

cat << EOF > $scripts/postinstall
#!/bin/sh
# link PROS CLI binary to /usr/local/bin
[ -d /usr/local/bin ] || mkdir -p /usr/local/bin
ln -s /Applications/PROS\ CLI.app/Contents/MacOS/pros /usr/local/bin/pros
EOF

chmod +x $scripts/*

echo =============== CREATE DSTRIBUTION ===============
version=`cat version`
cp -r build/PROS\ CLI.app $root

pkgbuild \
  --root $root/ \
  --scripts $scripts/ \
  --identifier $identifier \
  --version $version \
  --install-location /Applications \
  pros-cli.pkg
