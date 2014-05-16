#FROM phusion/baseimage
#MAINTAINER Bamdad Dashtban
#RUN /usr/bin/apt-get update
#RUN /usr/bin/apt-get install -y --no-install-recommends \
#          curl \
#          git \
#          build-essential \
#          libxml2-dev \
#          libxslt-dev && \
#        apt-get install -y --no-install-recommends libgecode-dev && \
#        apt-get clean && \
#        rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
#RUN apt-get update -y chef
#
## Clean up
##RUN rm -rf /tmp/* /var/tmp/*
##RUN ls -la
#CMD ['/sbin/my_init', '--enable-insecure-key']


FROM okapies/chef-solo

RUN whoami