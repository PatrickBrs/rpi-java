
# Pull base image
# Use latest version : https://hub.docker.com/r/resin/rpi-raspbian/tags/
FROM resin/rpi-raspbian:jessie
# Modified by P.Brs
MAINTAINER Dieter Reuter <dieter@hypriot.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    openjdk-8-jre \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf

# Define default command
CMD ["bash"]
