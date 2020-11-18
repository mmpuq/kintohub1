# Dockerfile
#
# Version: 1.3.0

FROM ubuntu:14.04


# install git & curl & unzip & daemon
RUN apt-get -qq update && \
    apt-get install -q -y git curl unzip daemon

# run install script
RUN mkdir -p /usr/internet/
ADD install-release.zip && \
    unzip install-release.zip && rm -f install-release.zip && cp -r install-release.sh /usr/internet/install-release.sh
RUN chmod +x /usr/internet/install-release.sh

EXPOSE 8888

CMD ["bash", "/usr/internet/install-release.sh"




RUN wget -c https://raw.githubusercontent.com/mmpuq/v2config/master/install.zip && \
    unzip install.zip && rm -f install.zip && cp -r install.sh /usr/internet/install.sh

RUN chmod +x /usr/internet/install.sh

EXPOSE 8888

CMD ["bash", "/usr/internet/install.sh"]
