## -*- docker-image-name: "docker-crate" -*-
#
# Crate Dockerfile
# https://github.com/crate/docker-crate
#

FROM crate
# FROM java:7-jre
# MAINTAINER Crate Technology GmbH <office@crate.io>
# 
# ENV CRATE_VERSION 0.47.4
# RUN mkdir /crate && \
#   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz" \
#   | tar -xzC /crate --strip-components=1
# 
# ENV PATH /crate/bin:$PATH
# 
# VOLUME ["/data"]
# 
# ADD crate.yml /crate/config/crate.yml
# ADD logging.yml /crate/config/logging.yml
# 
# WORKDIR /data
# 
# # http
# EXPOSE 4200
# EXPOSE 4300
# 
# CMD ["crate"]
