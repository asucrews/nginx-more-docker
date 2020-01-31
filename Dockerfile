FROM centos:centos7

RUN yum -y install --setopt=tsflags=nodocs https://repo.aerisnetwork.com/pub/aeris-release-7.rpm && \
    yum -y update --setopt=tsflags=nodocs && \
    yum -y install nginx-more --setopt=tsflags=nodocs && \
    yum clean all

EXPOSE 80 443
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
