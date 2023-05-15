FROM node:19-alpine

RUN git clone https://github.com/ethereum-optimism/optimism /app
WORKDIR /app
RUN chmod 777 -R *
RUN yarn install --frozen-lockfile && yarn cache clean
RUN yarn build
WORKDIR /app/packages/fault-detector
CMD [""]
