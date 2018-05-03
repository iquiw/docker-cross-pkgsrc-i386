FROM iquiw/cross-netbsd-i386

ENV PATH=/usr/pkg/sbin:/usr/pkg/bin:$PATH
ENV SH=/bin/bash

RUN cd /usr && \
    git clone --depth 1 https://github.com/NetBSD/pkgsrc.git && \
    cd pkgsrc/bootstrap && \
    ./bootstrap && \
    rm -rf work

COPY mk.conf /usr/pkg/etc/mk.conf
