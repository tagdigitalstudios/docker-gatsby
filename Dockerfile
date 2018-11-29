FROM node:lts-alpine

RUN set -ex \
  && apt-get update \
  && apt install -y apt-transport-https \
  && apt-add-repository ppa:git-core/ppa \
  && apt-get update \
  && apt-get install git=1:2.* -y --no-install-recommends \
  && git version \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean

RUN set -ex\
  && yarn global add gatsby-cli
