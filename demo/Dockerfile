############################################################
## Dockerfile to build the ga4gh demo on mod_wsgi-express
## Based on mod_wsgi-docker
############################################################
FROM afirth/ga4gh_debian_apache

# File Author / Maintainer
MAINTAINER Alastair Firth

#Place the demo config
ADD config.py /app/ga4gh/config.py

# Create the default data directory
RUN mkdir -p /data/
WORKDIR /data/

# Fetch the example data and extract
# On some terminals the progress bar freezes during build
RUN curl http://www.well.ox.ac.uk/~jk/ga4gh-example-data.tar | tar -x

WORKDIR /

CMD [ "--working-directory", "ga4gh", \
  "--log-to-terminal", \
  "ga4gh/application.wsgi" ]
