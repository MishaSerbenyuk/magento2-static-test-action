#!/bin/sh -l

echo "Running Magento2 PHP CodeSniffer"
composer global require --dev magento/magento-coding-standard
export PATH="$HOME/.composer/vendor/bin:$PATH"
phpcs --config-set installed_paths ~/.composer/vendor/magento/magento-coding-standard/
phpcs --ignore=*/vendor/* --warning-severity=0 --colors --standard=Magento2 ./
