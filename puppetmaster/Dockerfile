FROM ubuntu:14.04

RUN apt-get update

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppetmaster \
&& apt-get clean \
&& rm -Rf /var/lib/apt/lists/*


RUN echo "dns_alt_names = puppet, puppetmaster, master" >> /etc/puppet/puppet.conf
RUN echo "server = puppet" >> /etc/puppet/puppet.conf
RUN echo "autosign = true" >> /etc/puppet/puppet.conf
RUN echo "\n[agent]\ncertname = puppetmaster" >> /etc/puppet/puppet.conf

EXPOSE 8140

ENTRYPOINT [ "puppet", "master", "--no-daemonize", "--verbose", "--logdest", "console", "--masterport=8140" ] 


