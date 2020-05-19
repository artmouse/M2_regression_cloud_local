#!/usr/bin/env bash

docker run  -it  \
            -v $(pwd):/app/ \
            -v ~/.composer/:/root/.composer/ magento/magento-cloud-docker-php:7.3-cli-1.1 \
            bash -c "composer install && chown www. /app/"
