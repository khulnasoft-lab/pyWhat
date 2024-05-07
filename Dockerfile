FROM python:3.12-alpine
RUN apk add --no-cache git \
    && pip install  --no-cache-dir git+https://github.com/bee-san/pyWhat \
    && apk del git \
    && rm -rf /var/cache/apk/*
WORKDIR /workdir
ENTRYPOINT [ "python", "-m", "pywhat" ]
