# kali-metasploit

A Docker container for Metasploit built on Kali.

# Running

This container is meant to be run interactively, as it immediately launches
msfconsole. Try the following:

docker run -it cannable/kali-metasploit

Depending on what you're doing, you may want to expose some ports (ex. so
meterpreter "stuff" can get back); this container doesn't, by default.

# Postgres

Being Kali-based, Postgres is installed in the image. By default, a data volume
is created to hold the DB. If you decide to mess with this, it's in
/var/lib/postgresql.

# Updating the Metasploit Framework at Startup

The default behaviour of the container is to attempt to update the framework
with Apt. If you don't want to do this, set MSF_UPDATE to 0.

# Additional Notes

There aren't any, really.
