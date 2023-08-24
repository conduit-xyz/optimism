FROM node:alpine

RUN apk update
RUN apk add jq
RUN apk add --no-cache git
RUN npm install -g pnpm

RUN git clone https://github.com/conduitxyz/optimism /app
WORKDIR /app
RUN pnpm install
RUN pnpm build
WORKDIR /app/packages/chain-mon
CMD [""]
