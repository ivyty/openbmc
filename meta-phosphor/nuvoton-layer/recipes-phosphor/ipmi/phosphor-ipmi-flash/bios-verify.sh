#!/bin/sh

sigfile=/tmp/bmc.sig
bmcimage=/tmp/bios-image
publickey=/etc/activationdata/OpenBMC/publickey

if [ -f $publickey ];then
	r=$(openssl dgst -verify $publickey  -sha256 -signature $sigfile   $bmcimage)
	echo "$r" > /tmp/update-bios.log
	if [ "Verified OK" == "$r" ]; then
		echo "success" > /tmp/bios.verify
		exit 0
	else
		echo "failed" > /tmp/bios.verify
		exit 1
	fi
else
	echo "No $publickey file" > /tmp/update-bios.log
	exit 1
fi
