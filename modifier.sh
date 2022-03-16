#!/bin/bash
basefile="base.ovpn"
newfile="vpn.ovpn"
if [ $# -ne 0 ]
then
    name=$1
if (( $# >= 2 ));
then
    basefile=$2
fi
fi
sed "s|remote .* 443|remote $name 443|" $basefile > $newfile
