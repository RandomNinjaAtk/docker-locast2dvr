#!/usr/bin/with-contenv bash
if [ -f /config/config ]; then
	rm  /config/config
fi
echo "username=\"${L2DUSER}\"" >> /config/config
echo "password=\"${L2DPASS}\"" >> /config/config
echo "override_zipcodes=\"${L2DZIP}\"" >> /config/config

locast2dvr --config /config/config --bind-address 192.168.10.10 -ds
