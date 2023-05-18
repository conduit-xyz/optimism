FROM ghcr.io/kahuang/forge-git-scripter-base:latest as base

RUN apk update
RUN apk add jq

RUN git clone https://github.com/conduitxyz/optimism /app
WORKDIR /app
RUN yarn install --frozen-lockfile && yarn cache clean
RUN yarn build
WORKDIR /app/packages/fault-detector
CMD [""]
