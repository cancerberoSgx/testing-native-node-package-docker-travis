FROM debian:jessie

RUN apt-get update -qq
RUN apt-get upgrade -qq
RUN apt-get install -y build-essential git curl

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install nodejs

RUN apt-get clean

RUN groupadd -r user && useradd -r -m -g user user

USER user
