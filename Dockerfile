FROM lsiobase/nginx:3.12
MAINTAINER peron.clem@gmail.com

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# package version
ENV H5AI_VER="0.29.2"

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
