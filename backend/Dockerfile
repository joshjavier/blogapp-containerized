FROM node:lts-bookworm-slim
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY . .
RUN npm ci
CMD [ "npm", "start" ]
