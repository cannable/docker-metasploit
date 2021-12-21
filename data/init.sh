#!/bin/sh

# If you mounted a volume for Postgres (which is the default),
# we need to fix the lack of data files (whoops)
if [ ! -d /var/lib/postgresql/14 ]; then
	pg_dropcluster 14 main
	pg_createcluster 14 main
fi

service postgresql start

if [ $MSF_UPDATE ]; then
    # Make sure the framework is up to date
    apt-get update
    apt-get -y install metasploit-framework nmap
    apt-get clean
fi

# If there is no DB schema, load it
msfdb init

# Run Metasploit Console
cd /root
msfconsole
service postgresql stop
exit
