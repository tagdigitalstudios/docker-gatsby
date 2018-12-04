FROM node:lts-alpine

RUN set -ex \
  && apk --update add build-base git openssh python py-pip vips \
  && pip install awscli \
  && apk --purge del py-pip \
  && rm -rf /var/lib/apt/lists/* \
  && rm /var/cache/apk/*

RUN set -ex \
  && yarn global add gatsby-cli
