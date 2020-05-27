# my-app

> My pioneering Nuxt.js project

## Add server config

`nuxt.config.js`
```javascript
  export default {
    ...
    ...  
    server: {
            port: 3000, // default: 3000
            host: '0.0.0.0', // default: localhost
        },
    ...
    ...
  }
```

## Build Setup

```bash
# install dependencies
$ docker-compose -f docker-compose.builder.yml run --rm install

# serve with hot reload at localhost:<PORT>
$ docker-compose up

# fire npm commands
# Eg. docker-compose exec dev npm install axios
$ docker-compose exec <SERVCIVE> <COMMAND> 

# build for production
$ docker-compose -f docker-compose.builder.yml run --rm build # output - ./.nuxt/dist/

# launch production server
# serve at localhost:<PORT> 
# <PORT> specified in docker-compose.builder.yml - (default: 3001)
$ docker-compose -f docker-compose.builder.yml run --rm --service-ports start

# generate static project
# output - ./.nuxt/dist/
$ docker-compose -f docker-compose.builder.yml run --rm generate
```

## Build Setup - using make

If you are in `Linux` or `Mac` environment, you can setup the envrionmet using `make`

```bash
# install dependencies
$ make install

# serve with hot reload at localhost:<PORT>
$ make dev

# fire npm commands
# Eg. make exec cmd="npm install axios"
$ make exec cmd="<COMMAND>" 

# build for production
# output - .nuxt/dist/
$ make build

# launch production server
# serve at localhost:<PORT> 
# <PORT> specified in docker-compose.builder.yml - (default: 3001)
$ make start

# generate static project
# output - .nuxt/dist/
$ make generate

```


For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).

Dockerized <u>development</u> setup is done following this [article](https://hackernoon.com/a-better-way-to-develop-node-js-with-docker-cd29d3a0093).

Dockerized <u>deployment</u> setup is done following this [article](https://dev.to/frontendfoxes/dockerise-your-nuxt-ssr-app-like-a-boss-a-true-vue-vixens-story-4mm6).

Deployment to server using GitLab CI/CD (gitlab-runner) is done following this [article](https://medium.com/@sean_bradley/auto-devops-with-gitlab-ci-and-docker-compose-f931233f080f).

## TO-DO
- `PORT` as varibale and passed as cli arg