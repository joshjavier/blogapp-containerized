FROM node:lts-bookworm-slim
WORKDIR /usr/src/app
COPY . .
RUN npm ci
CMD [ "npm", "run", "dev", "--", "--host" ]
