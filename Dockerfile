#FROM lsiobase/python:3.8
FROM python

# Set python to use utf-8 rather than ascii.
ENV PYTHONIOENCODING="UTF-8"

# Ports and volumes.
EXPOSE 5050/tcp
VOLUME /config
RUN pip install -U pip
RUN pip install -U flexget
ENTRYPOINT [ "/usr/local/bin/flexget" ]
CMD [ "-c","/config/series.yml","daemon","start","--autoreload-config"]
