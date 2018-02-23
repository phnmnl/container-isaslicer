FROM isatools/isatools:3.6-alpine-0.9.5

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="Tools to slice query ISA-Tab"
LABEL software.version="0.9.5"
LABEL version="0.1.0"
LABEL software="mtblisa"

WORKDIR /mtblisa

RUN apk add --no-cache --virtual git-deps git openssh \
    && git clone --depth 1 --single-branch -b feature/pheno-cerebellin https://github.com/ISA-tools/isatools-galaxy /files/galaxy \
    && apk del git-deps \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*

ENV PATH=$PATH:/files/galaxy

ADD run_test.sh /usr/local/bin/run_test.sh
ADD run_tests.py /usr/local/bin/run_tests.py
RUN cp /files/galaxy/tools/slicer/run_mtblisa.py /usr/local/bin/run_mtblisa.py
RUN cp /files/galaxy/tools/slicer/run_slicer.py /usr/local/bin/run_slicer.py
RUN chmod a+rx \
  /usr/local/bin/run_mtblisa.py \
  /usr/local/bin/run_slicer.py \
  /usr/local/bin/run_test.sh \
  /usr/local/bin/run_tests.py

ENTRYPOINT ["run_slicer.py"]
