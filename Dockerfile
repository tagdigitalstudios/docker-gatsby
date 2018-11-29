FROM node:lts-alpine

RUN set -ex \
  && apk --update add git openssh \
  && rm -rf /var/lib/apt/lists/* \
  && rm /var/cache/apk/*

RUN set -ex \
  && yarn global add gatsby-cli
