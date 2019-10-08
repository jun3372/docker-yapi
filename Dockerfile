
FROM node:alpine

LABEL maintainer="Jun <zhoujun3372@gmail.com>"

RUN npm install -g yapi-cli && npm install -g minimatch \
    && apk add --no-cache git python make

WORKDIR /yapi

EXPOSE 3000
