FROM grahamdumpleton/mod-wsgi-docker:python-2.7-onbuild
CMD [ "--working-directory", "ga4gh", \
      "--log-to-terminal", \
      "ga4gh/application.wsgi" ]
