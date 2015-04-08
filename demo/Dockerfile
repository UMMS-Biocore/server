FROM afirth/ga4gh_debian_apache
ADD config.py /app/ga4gh/config.py

# Create the default data directory
RUN mkdir -p /data/
WORKDIR /data/

#wget the example data and extract
RUN curl http://www.well.ox.ac.uk/~jk/ga4gh-example-data.tar | tar -x

WORKDIR /

CMD [ "--working-directory", "ga4gh", \
			"--log-to-terminal", \
			"ga4gh/application.wsgi" ]
