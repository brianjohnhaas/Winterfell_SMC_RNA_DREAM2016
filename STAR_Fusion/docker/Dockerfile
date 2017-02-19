FROM ubuntu:16.04

RUN apt-get update && apt-get install -y gcc g++ perl python automake make \
     wget curl libdb-dev \
     bzip2 zlibc zlib1g zlib1g-dev  default-jre && \
     apt-get clean

WORKDIR /opt

# star
RUN wget https://github.com/alexdobin/STAR/archive/2.5.2a.tar.gz && \
    tar xvf 2.5.2a.tar.gz && \
    cp STAR-2.5.2a/bin/Linux_x86_64_static/STAR /usr/local/bin 

# star-fusion
RUN STAR_FUSION_URL="https://github.com/STAR-Fusion/STAR-Fusion/releases/download/v1.0.0/STAR-Fusion-v1.0.0.FULL.tar.gz" && \
    cd $SRC && \
    wget $STAR_FUSION_URL && \
    tar xvf STAR-Fusion-v1.0.0.FULL.tar.gz
    
RUN SAMTOOLS_URL="https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2" && \
   cd $SRC && \
   wget $SAMTOOLS_URL && \
   tar xvf samtools-1.3.1.tar.bz2 && \
   cd samtools-1.3.1/htslib-1.3.1 && ./configure && make && make install && \
   cd ../ && ./configure --without-curses && make && make install

RUN cpan install Set::IntervalTree 

RUN cpan install DB_File

RUN cpan install URI::Escape 


COPY convert_star_to_bedpe.py /usr/local/bin/

ENV PATH /opt/STAR-Fusion_v1.0.0:/usr/local/bin/:/usr/bin:/bin

