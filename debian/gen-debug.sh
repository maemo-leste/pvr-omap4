#! /bin/bash

INSTALL_LIST="\
libegl1-sgx-omap4.install \
libgles1-sgx-omap4.install \
libgles2-sgx-omap4.install \
libopenvg1-sgx-omap4.install \
pvr-omap4.install \
pvr-omap4-utils.install"

for f in $INSTALL_LIST
do 
  debugf=`echo $f | awk -F. '{print $1"-dbg."$2}'`
  echo $debugf
  cp $f $debugf
  sed -i 's/^usr/usr\/lib\/debug\/usr/g' $debugf
done


