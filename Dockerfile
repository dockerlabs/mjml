FROM node:alpine

RUN apk add --update \
    bash \
    make \
  && rm -rf /var/cache/apk/*

RUN npm install -g mjml@4.3.1

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
