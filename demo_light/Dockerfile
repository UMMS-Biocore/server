############################################################
# Dockerfile to build the ga4gh demo 
# Based on CentOS7
############################################################

# Set the base image to Ubuntu
FROM centos:7

# File Author / Maintainer
MAINTAINER Alastair Firth


################## BEGIN INSTALLATION ######################
# Install ga4gh Demo Following the Instructions at readthedocs
# Ref: http://ga4gh-reference-implementation.readthedocs.org/en/stable/demo.html#demo

#TODO add yum key

# Install prereqs
RUN yum -y update && yum -y install \
			curl \
			git \
			python-backports \
			python-backports-ssl_match_hostname \
			python-devel \
			python-setuptools \
#python-virtualenv \
			tar \
			wget \
			zlib-devel
RUN yum -y groupinstall "Development Tools"
RUN yum clean all

# Create the default data directory
RUN mkdir -p /data/
WORKDIR /data/

#wget the example data
RUN wget http://www.well.ox.ac.uk/~jk/ga4gh-example-data.tar -nv -O - | tar -x

# Create and activate a new Python virtual environment
# Some more things need to be added if it's decided to run inside virtualenv
# Ref: https://glyph.twistedmatrix.com/2015/03/docker-deploy-double-dutch.html
#RUN virtualenv ga4gh-env
#RUN . ga4gh-env/bin/activate

# Install setuptools and pip
RUN easy_install setuptools
RUN easy_install pip

# Install ga4gh with pip
RUN pip install ga4gh --pre

##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 8000

ENTRYPOINT ["ga4gh_server"]

