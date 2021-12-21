#!/bin/sh

# If you mounted a volume for Postgres (which is the default),
# we need to fix the lack of data files (whoops)
if [ ! -d /var/lib/postgresql/14 ]; then
	pg_dropcluster 14 main
	pg_createcluster 14 main
fi

service postgresql start

# Install Metasploit nightly build

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall

# If there is no DB schema, load it
msfdb init

# Run Metasploit Console
cd /root
msfconsole
service postgresql stop
exit
