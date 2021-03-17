#!/bin/bash

cd /srv/www/mapbender/
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=1.0.0
composer require --dev symfony/phpunit-bridge
php -d memory_limit=4G $(which composer) update symfony/phpunit-bridge
