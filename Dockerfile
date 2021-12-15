FROM ubuntu:20.04
COPY entrypoint.sh /entrypoint.sh
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata wget sudo gnupg
ENTRYPOINT ["/entrypoint.sh"]