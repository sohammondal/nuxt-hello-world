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

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).

Dockerized development setup is done following this [article](https://hackernoon.com/a-better-way-to-develop-node-js-with-docker-cd29d3a0093).


## TO-DO
- `PORT` as varibale and passed as cli arg