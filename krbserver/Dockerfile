# Parveen 
# group hisix2
# Dockerfile
FROM fedora:27
LABEL author="Parveen"
LABEL description="kerberos server2018-2019"
RUN dnf -y install krb5-server krb5-workstation procps tree vim
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
