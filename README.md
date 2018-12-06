# wordpress-phpunit-docker
Running phpunit for WordPress plugin on Docker container

## Copy your plugin to plugins directory

## Running container

Building image:
`docker-compose build`

Running containers:
`docker-compose up`

Running container in the background -d flag (for “detached” mode)
`docker-compose up -d`

Running with build:
`docker-compose up -d --build`

## Running tests

docker-compose exec wordpress bash -c "cd /var/www/html/wp-content/plugins/my-plugin; phpunit"

## Stop services

`docker-compose stop`
or
`docker-compose down`
