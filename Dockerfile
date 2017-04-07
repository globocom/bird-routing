FROM ubuntu:latest


#
# DOCKER IMAGE TO RUN A BIRD INTERNET ROUTING DAEMON
#
# Bird project site: http://bird.network.cz/
# Bird source code: git://git.nic.cz/bird.git
#


MAINTAINER Gustavo Pantuza <gustavopantuza@gmail.com>

LABEL Description="Bird Internet routing daemon docker image" Vendor="Globo.com" Version="0.1.0"


# Updates package manager repositories
RUN apt-get update

# Installs ping
RUN apt-get install -y iputils-ping

# Installs net-tools (ifconfig, netstat, etc)
RUN apt-get install -y net-tools

# Install BIRD Internet routing daemon
RUN apt-get install -y bird

# Create volume for configuration files
VOLUME /etc/bird/

# Exposes BGP port by default. Expecify other protocol ports with 'docker run'
EXPOSE 179/tcp
