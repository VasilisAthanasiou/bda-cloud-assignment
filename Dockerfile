FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package.json tsconfig.json next.config.mjs ./
COPY app ./app
COPY cloud ./cloud
COPY .env .env
COPY middleware.ts ./

RUN npm install
RUN npm run build

FROM node:18-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/ .

EXPOSE 3000

CMD ["npm", "start"]
