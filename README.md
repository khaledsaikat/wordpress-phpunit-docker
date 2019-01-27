# wordpress-phpunit-docker
Running phpunit for WordPress plugin on Docker container

## Preparing the plugin to test
Either copy your plugin to plugins directory, or map the plugin directory on `docker-composer.yml` file.

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
`docker-compose exec wordpress bash -c "cd /var/www/html/wp-content/plugins/my-plugin; phpunit"`

## Executing bash of wordpress container
`docker-compose exec wordpress bash`

## Stop services
`docker-compose stop`
or
`docker-compose down`
