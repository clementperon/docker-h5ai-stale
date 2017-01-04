FROM lsiobase/alpine.nginx:3.5
MAINTAINER chbmb

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# package version
ENV H5AI_VER="0.29.0"

# install packages
RUN \
 apk add --no-cache \
	curl \
	unzip

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
