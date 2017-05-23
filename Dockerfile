FROM python:2.7-alpine
RUN apk update && apk add \
    py-pip \
    && rm -rf /var/cache/apk/*
RUN pip install pyyaml
COPY ./ /scripts/
CMD [ "python", "/scripts/main.py" ]
