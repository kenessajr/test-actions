FROM node:13.1-alpine

WORKDIR /usr/src/app
COPY .npmrc package.json yarn.lock ./
RUN yarn cache clean && yarn --update-checksums
COPY . ./
EXPOSE 3000
CMD ["yarn", "start"]
