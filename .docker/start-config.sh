#!/bin/bash

# php artisan cache:clear
if [ -d public/storage ];
then
    rm public/storage
fi

if [ ! -d storage/app/public/images ];
then
    mkdir -p storage/app/public/images
fi

php artisan migrate
# php artisan storage:link
# chmod -R 777 storage
chmod -R 777 storage/app/public/images
# composer install
# php artisan jwt:secret --no-interaction
