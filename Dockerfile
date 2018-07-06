FROM scf37/base

RUN apt-get update && apt-get install -y python-dev ca-certificates libssl-dev && \
    curl https://bootstrap.pypa.io/get-pip.py | python2 && \
    pip2 install -U pip setuptools && \
    pip2 install elastalert && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY conf /opt/conf
COPY app.sh /opt/app

ENTRYPOINT ["/opt/app"]