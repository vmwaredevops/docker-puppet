FROM ubuntu:14.04

RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get -qy install puppet facter \
&& apt-get clean \
&& rm -Rf /var/lib/apt/lists/*

ADD puppet /puppet

RUN facter

RUN puppet apply /puppet/helloworld.pp

CMD /bin/bash


