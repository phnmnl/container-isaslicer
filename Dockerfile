FROM isatools/isatools:3.6-alpine-0.10.0

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="ISAslicer2"
LABEL software.version="0.10.0"
LABEL version="0.1.0"
LABEL software="mtblisa"

WORKDIR /mtblisa

RUN apk add --no-cache --virtual git-deps git openssh py3-pip \
    && pip3 install click \
    && git clone --depth 1 --single-branch -b master https://github.com/ISA-tools/isatools-galaxy /files/galaxy \
    && apk del git-deps \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*

ENV PATH=$PATH:/files/galaxy

ADD run_test.sh /usr/local/bin/run_test.sh
RUN cp /files/galaxy/tools/isaslicer2/isaslicer2.py /usr/local/bin/isaslicer2.py
RUN chmod a+rx \
  /usr/local/bin/isaslicer2.py \
  /usr/local/bin/run_test.sh

ENTRYPOINT ["isaslicer2.py"]
