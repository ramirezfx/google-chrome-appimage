#!/bin/bash
DIST=hirsute
WORKDIR=google-chrome-stable
chmod 777 pkg2appimage.sh
rm -Rf $WORKDIR
rm -Rf google-chrome-stable_current_amd64.deb
rm -Rf out
rm google-chrome-latest.yml
cp google-chrome-latest.yml.template google-chrome-latest.yml
sed -i 's/DIST/$DIST/g' google-chrome-latest.yml
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ./google-chrome-stable_current_amd64.deb
./pkg2appimage.sh google-chrome-latest.yml
