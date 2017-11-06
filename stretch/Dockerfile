FROM debian:jessie

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y build-essential git curl

RUN curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh && \
    sh nodesource_setup.sh && \
    apt-get install nodejs

RUN git clone https://github.com/QuantamHD/LucyJS.git /workspace && \
    cd /workspace && \
    npm install --unsafe-perm && \
    npm test

RUN apt-get clean
