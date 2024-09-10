# blogapp-containerized

> A Full Stack Open Exercise

This repo combines the blogapp built in parts 4 and 5 into a single containerized app.

This is what I came up with while working on **exercises 12.21 and 12.22 of part 12**.

## Requirements

- Node.js 22.7.0
- Docker 27.2.0

## Setting up development

Install dependencies:

```sh
git clone https://github.com/joshjavier/blogapp-containerized.git
cd blogapp-containerized
(cd frontend && npm install)
(cd backend && npm install)
```

Next, create an `.env.local` file in the root directory that contains the following variables:

- `MONGODB_URI` - connection string of production/dev database
- `TEST_MONGODB_URI` - connection string of test database
- `SECRET` - used to sign and verify the JSON Web Tokens for authentication

Then, use docker compose to build and start the containerized development environment:

```sh
docker compose -f docker-compose.dev.yml up
```

The above command runs three containers:
- `blog-app` - frontend powered by Vite dev server (accessible in development at http://localhost:5173)
- `blog-backend` - backend powered by Express server (accessible in development at http://localhost:3000)
- `blog-nginx` - reverse proxy server that exposes a single entrypoint for the app (http://localhost:8080)

To stop the containers, press `Ctrl-C` in the terminal where you ran docker compose, then clean up by running:

```sh
docker compose -f docker-compose.dev.yml down
```

## Setting up production

Run `docker compose` but with the compose file for production:

```sh
docker compose -f docker-compose.yml up
```
