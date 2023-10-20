FROM php:8.2-apache-bullseye

RUN <<EOF
apt-get update
apt-get install --yes \
git=1:2.30.2-1+deb11u2 \
wget=1.21-1+deb11u1 \
ffmpeg=7:4.3.6-0+deb11u1 \
lsb-release \
zip
EOF

RUN <<EOF
docker-php-ext-install bcmath
docker-php-ext-install sockets
EOF

# Install composer 
RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -version=2.6.2
EOF

# Copy souce code 
COPY src/ /var/www/html

# Run composer in order to get dependencies
RUN <<EOF
composer install
rm -f composer.*
chown -R www-data:www-data /var/www/html/
EOF