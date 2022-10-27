FROM alpine/k8s:1.23.13
LABEL maintainer "Rowan Ruseler <rowanruseler@gmail.com>"

# install packages
RUN apk add --update --upgrade jq curl

# copy scripts
COPY assets /opt/resource
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
