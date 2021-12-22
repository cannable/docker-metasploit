# kali-metasploit

A Docker container for running metasploit nightly builds, based on kali-rolling.

# Building

You should really build this yourself if you want to run it (and it will
probably give you a feel-good feeling going through the container source bits).
I created this image so that I have a semi-reliable base I can fall back on when
I need to test infrastructure controls. As such, the image posted to the Docker
Hub will probably flip-flop between being entirely expired or massively out of
date.

# Running

This container is meant to be run interactively, as it immediately launches
msfconsole. Try the following:

```
docker run -it cannable/kali-metasploit
```

Depending on what you're doing, you maybe/probably want to expose some ports
(ex. so meterpreter "stuff" can get back). This container exposes no ports by
default, for simplicity.

# Postgres

Being Kali-based, Postgres is installed in the image. By default, a data volume
is created to hold the DB. If you decide to mess with this, it's in
/var/lib/postgresql.

# Installing the Metasploit Framework at Startup

The container does this. Dependencies are installed when you build the image,
but that's more so that users aren't inconvenienced massively when running the
image.

# Why... Simplicity

I tried to keep this as simple as possible. I have a day job and know I can't
put any significant effort into supporting this properly. I'm also not really
crazy about container images that make assumptions and try to automatically
configure things (there are use cases there, but if there's automation to be
had, I'd rather me or my automation tools do the heavy lifting).

Anyway, if you're reading through this thinking "this is so trivial," well...
that's the point. Basically, this container makes sure Postgres is sorted out,
then installs and runs Metasploit. That's it. Bare minimum because that's all I
want or need. Rapid7 did all of the hard work.

# Additional Notes

There aren't any, really.
