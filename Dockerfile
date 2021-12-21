FROM kalilinux/kali-rolling
ENV NAME msf
WORKDIR /
VOLUME ["/var/lib/postgresql"]
VOLUME ["/root"]
COPY ["./data", "/data"]
RUN ["/bin/sh", "/data/build.sh"]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/sh", "/data/init.sh"]

