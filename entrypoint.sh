#!/bin/sh -l

echo "Running Magento2 PHP CodeSniffer"
composer global require --dev magento/magento-coding-standard
vendor/bin/phpcs --config-set installed_paths ~/.composer/vendor/magento/magento-coding-standard/
vendor/bin/phpcs --ignore=*/vendor/* --standard=Magento2 ./
