FROM ghcr.io/kahuang/forge-git-scripter-base:latest as base

RUN apk update
RUN apk add jq

RUN git clone https://github.com/conduitxyz/optimism /app
WORKDIR /app
RUN pnpm install
RUN pnpm build
WORKDIR /app/packages/chain-mon
CMD [""]
