FROM	debian:unstable
RUN	echo 'deb-src http://deb.debian.org/debian unstable main' >> /etc/apt/sources.list \
        && apt update \
        && apt-get -y build-dep linux \
        && rm -rf /var/lib/apt/lists/*
WORKDIR	/build/kernel
ENTRYPOINT	["make"]
CMD	["deb-pkg"]
