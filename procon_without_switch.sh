#!/bin/bash
user="user"
pw="password"
servers=(ipaddress1 ipaddress2 ipaddress3 ipaddress4 ipaddress5 ipaddress6)
for server in ${servers[*]}
do
path="$server%20port%2027260"
files=( `exec find Plugins -name '*.cs' -o -name '*.inc'` )
    for file in ${files[*]}
    do
	echo	curl -u $user:$pw -T $file ftp://$server/$path/$file
		curl -u $user:$pw -T $file ftp://$server/$path/$file
	done	
done