FROM node:lts-bookworm-slim AS build
ENV VITE_BACKEND_URL=/api
WORKDIR /usr/src/app
COPY . .
RUN npm ci
RUN npm test run
RUN npm run build

FROM nginx:mainline-alpine
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
