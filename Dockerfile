
FROM node:alpine

LABEL maintainer="Jun <zhoujun3372@gmail.com>"

RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org

RUN apk add --no-cache git python make

WORKDIR /yapi

EXPOSE 3000
