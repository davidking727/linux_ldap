#!/bin/sh
cd ~
wget 'http://download.beyondtrust.com/PBISO/8.0.0.2016/linux.deb.x64/pbis-open-8.0.0.2016.linux.x86_64.deb.sh'
chmod +x pbis-open-8.0.0.2016.linux.x86_64.deb.sh
bash 'pbis-open-8.0.0.2016.linux.x86_64.deb.sh'
shutdown now -r

## The above script downloads the latest version of of PBIS as of this script's creation. If a newer version comes out and you want it you will need to change the download link and the chmod and bash command lines.