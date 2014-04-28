#!/bin/bash
user="user"
pw="password"
servers=(ipaddress1 ipaddress2 ipaddress3 ipaddress4 ipaddress5 ipaddress6 ipaddress7)

for server in ${servers[*]}
do
	case "$server" in
		ipaddress1)
		port="28260"
		;;
		ipaddress2)
		port="27260"
		;;
		ipaddress3)
		port="27260"
		;;
		ipaddress4)
		port="28270"
		;;
		ipaddress5)
		port="27290"
		;;
		ipaddress6)
		port="28260"
		;;
		ipaddress7)
		port="28280"
		;;
	esac

path="$server%20port%20$port"
files=( `exec find Plugins -name '*.cs' -o -name '*.inc'` )
	for file in ${files[*]}
	do
	echo	curl -u $user:$pw -T $file ftp://$server/$path/$file
			curl -u $user:$pw -T $file ftp://$server/$path/$file
	done	
done