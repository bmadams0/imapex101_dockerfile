FROM debian:latest
MAINTAINER Bryan Adams <badams2@cisco.com>

# You can provide comments in Dockerfiles
# Install any needed packages for your application
RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    mercurial \
 && rm -rf /var/lib/apt/lists/*

#expose port 80 but we also need to link port 80
EXPOSE 80

COPY hello_world.sh /root/
RUN chmod +x /root/hello_world.sh

CMD ["/root/hello_world.sh"]