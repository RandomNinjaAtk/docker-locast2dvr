#!/usr/bin/with-contenv bash
if [ -f /config/config ]; then
	rm  /config/config
fi
echo "username=\"${L2DUSER}\"" >> /config/config
echo "password=\"${L2DPASS}\"" >> /config/config
echo "override_zipcodes=\"${L2DZIP}\"" >> /config/config

echo "------------------------------------------------------------"
echo "|~) _ ._  _| _ ._ _ |\ |o._  o _ |~|_|_|"
echo "|~\(_|| |(_|(_)| | || \||| |_|(_||~| | |<"
echo "Presenets: locast2dvr"
echo "------------------------------------------------------------"
echo "Donate: https://github.com/sponsors/RandomNinjaAtk"
echo "Project: https://github.com/RandomNinjaAtk/docker-locast2dvr"
echo "Support: https://discord.gg/JumQXDc"
echo "------------------------------------------------------------"

locast2dvr --config /config/config --bind-address $L2DHOSTIP -ds -m -d 8 -r
