# Parent image
FROM wordpress:php7.2-fpm-alpine

# Installing dependencies
RUN apk add --no-cache subversion

# Installing phpunit
RUN wget -O phpunit https://phar.phpunit.de/phpunit-6.phar && \
    chmod +x phpunit && \
    mv phpunit /usr/local/bin/phpunit

# Copy shell script
COPY install-wp-tests.sh /install-wp-tests.sh

# Generate tests dependencies
# @todo use env
RUN bash /install-wp-tests.sh wordpress wordpress 'wordpress' db latest
