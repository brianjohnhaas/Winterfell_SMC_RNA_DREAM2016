FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y g++ make python libboost-dev libboost-thread-dev libboost-system-dev zlib1g-dev ncurses-dev libxml2-dev libxslt-dev python-dev python-pip git gcc libdb5.1 libdb5.1-dev
RUN apt-get install -y samtools wget bowtie


WORKDIR /opt

RUN wget https://github.com/deweylab/RSEM/archive/v1.2.31.tar.gz && \
    tar xvf v1.2.31.tar.gz  && \
    cd RSEM-1.2.31/ && \
    make && \
    make install


