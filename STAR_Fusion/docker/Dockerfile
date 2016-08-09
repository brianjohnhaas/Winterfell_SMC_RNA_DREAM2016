FROM ubuntu:14.04

# based on docker file provided by SMC-RNA challenge for STAR-Fusion

RUN apt-get -y update
RUN apt-get install -y curl wget g++ make python libboost-dev libboost-thread-dev libboost-system-dev zlib1g-dev ncurses-dev unzip gzip bzip2 libxml2-dev libxslt-dev python-dev python-pip git gcc libdb5.1 libdb5.1-dev
RUN apt-get install -y samtools wget

WORKDIR /opt

# star
RUN wget https://github.com/alexdobin/STAR/archive/2.5.2a.tar.gz && \
    tar xvf 2.5.2a.tar.gz && \
    cp STAR-2.5.2a/bin/Linux_x86_64_static/STAR /usr/local/bin 

# star-fusion
RUN wget https://github.com/STAR-Fusion/STAR-Fusion/releases/download/v0.8.0/STAR-Fusion_v0.8.FULL.tar.gz && \
    tar xvf STAR-Fusion_v0.8.FULL.tar.gz 
    

RUN cpan install Set::IntervalTree 

RUN cpan install DB_File

RUN cpan install URI::Escape 

RUN git clone https://github.com/Sage-Bionetworks/SMC-RNA-Examples.git && \
	cp SMC-RNA-Examples/star/scripts/convert_star_to_bedpe.py /usr/local/bin/

ENV PATH /opt/STAR-Fusion/:/usr/local/bin/:/usr/bin:/bin

