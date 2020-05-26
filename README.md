# my-app

> My pioneering Nuxt.js project

## Build Setup

```bash
# install dependencies
$ docker-compose -f docker-compose.builder.yml run --rm install

# serve with hot reload at localhost:3000
$ docker-compose up

# build for production and launch server
$ docker-compose -f docker-compose.builder.yml run build
$ docker-compose -f docker-compose.builder.yml run start

# generate static project
$ docker-compose -f docker-compose.builder.yml run generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
Dockerized development setup is done following this [article](https://hackernoon.com/a-better-way-to-develop-node-js-with-docker-cd29d3a0093).
