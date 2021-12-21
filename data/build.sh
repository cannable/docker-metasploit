#!/bin/sh

echo Installing base image bits...
apt-get update
apt-get -y install dumb-init vim

# Install Metasploit pre-reqs
apt-get -y install \
    binutils \
    binutils-common \
    binutils-x86-64-linux-gnu \
    bsd-mailx \
    build-essential \
    bundler \
    bzip2 \
    ca-certificates \
    cpp \
    cpp-11 \
    cron \
    curl \
    dbus \
    dbus-bin \
    dbus-daemon \
    dbus-session-bus-common \
    dbus-system-bus-common \
    dirmngr \
    dpkg-dev \
    exim4-base \
    exim4-config \
    exim4-daemon-light \
    fakeroot \
    fontconfig-config \
    fonts-dejavu-core \
    fonts-lato \
    g++ \
    g++-11 \
    gcc \
    gcc-11 \
    git \
    git-man \
    gnupg \
    gnupg-l10n \
    gnupg-utils \
    gpg \
    gpg-agent \
    gpg-wks-client \
    gpg-wks-server \
    gpgconf \
    gpgsm \
    javascript-common \
    john \
    john-data \
    less \
    libaio1 \
    libalgorithm-diff-perl \
    libalgorithm-diff-xs-perl \
    libalgorithm-merge-perl \
    libapparmor1 \
    libasan6 \
    libassuan0 \
    libatomic1 \
    libbinutils \
    libblas3 \
    libbrotli1 \
    libbsd0 \
    libc-dev-bin \
    libc-devtools \
    libc-l10n \
    libc6-dev \
    libcbor0.8 \
    libcc1-0 \
    libcommon-sense-perl \
    libcrypt-dev \
    libctf-nobfd0 \
    libctf0 \
    libcurl3-gnutls \
    libcurl4 \
    libdbus-1-3 \
    libdeflate0 \
    libdpkg-perl \
    libedit2 \
    liberror-perl \
    libevent-2.1-7 \
    libexpat1 \
    libfakeroot \
    libfido2-1 \
    libfile-fcntllock-perl \
    libfontconfig1 \
    libfreetype6 \
    libgcc-11-dev \
    libgd3 \
    libgdbm-compat4 \
    libgdbm6 \
    libgmp-dev \
    libgmpxx4ldbl \
    libgnutls-dane0 \
    libgomp1 \
    libgpm2 \
    libicu67 \
    libidn12 \
    libisl23 \
    libitm1 \
    libjbig0 \
    libjpeg62-turbo \
    libjs-jquery \
    libjson-perl \
    libjson-xs-perl \
    libksba8 \
    libldap-2.4-2 \
    libldap-common \
    liblinear4 \
    libllvm11 \
    liblocale-gettext-perl \
    liblockfile-bin \
    liblockfile1 \
    liblsan0 \
    liblua5.3-0 \
    libmd0 \
    libmpc3 \
    libmpdec3 \
    libmpfr6 \
    libncursesw6 \
    libnghttp2-14 \
    libnpth0 \
    libnsl-dev \
    libpcap0.8 \
    libperl5.32 \
    libpng16-16 \
    libpopt0 \
    libpq5 \
    libpsl5 \
    libpython3-stdlib \
    libpython3.9-minimal \
    libpython3.9-stdlib \
    libquadmath0 \
    libreadline8 \
    librtmp1 \
    libruby2.7 \
    libsasl2-2 \
    libsasl2-modules \
    libsasl2-modules-db \
    libsensors-config \
    libsensors5 \
    libsqlite3-0 \
    libssh2-1 \
    libstdc++-11-dev \
    libtiff5 \
    libtirpc-dev \
    libtsan0 \
    libtypes-serialiser-perl \
    libubsan1 \
    libunbound8 \
    libwebp6 \
    libx11-6 \
    libx11-data \
    libxau6 \
    libxcb1 \
    libxdmcp6 \
    libxext6 \
    libxml2 \
    libxmuu1 \
    libxpm4 \
    libxslt1.1 \
    libyaml-0-2 \
    libz3-4 \
    linux-libc-dev \
    locales \
    logrotate \
    lua-lpeg \
    make \
    manpages \
    manpages-dev \
    media-types \
    nasm \
    netbase \
    nmap \
    nmap-common \
    openssh-client \
    openssl \
    oracle-instantclient-basic \
    patch \
    perl \
    perl-modules-5.32 \
    pinentry-curses \
    postgresql \
    postgresql-14 \
    postgresql-client-14 \
    postgresql-client-common \
    postgresql-common \
    psmisc \
    publicsuffix \
    python3 \
    python3-minimal \
    python3.9 \
    python3.9-minimal \
    rake \
    readline-common \
    rpcsvc-proto \
    ruby \
    ruby-bundler \
    ruby-dev \
    ruby-minitest \
    ruby-net-telnet \
    ruby-power-assert \
    ruby-rubygems \
    ruby-test-unit \
    ruby-xmlrpc \
    ruby2.7 \
    ruby2.7-dev \
    ruby2.7-doc \
    rubygems-integration \
    sensible-utils \
    ssl-cert \
    sudo \
    sysstat \
    ucf \
    unzip \
    wget \
    xauth \
    xz-utils \
    zip


# Purge Apt Caches
apt-get -y clean
rm -rf /var/lib/apt/lists/*

