############################################################
## Dockerfile to build the ga4gh server for production on mod_wsgi-express
## Based on mod_wsgi-docker
############################################################
FROM afirth/ga4gh_server_apache:core
# Results of this build are available from Dockerhub as afirth/ga4gh_server_apache:prod

# File Author / Maintainer
MAINTAINER Alastair Firth

# Place the config
ADD config.py /app/ga4gh/config.py

# Pass '-e GA4GH_DATA_SOURCE=/container/data/path' and '-v /host/data/path:/container/data/path:ro' to mount local data
# See docs for more info
