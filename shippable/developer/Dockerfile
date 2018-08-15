FROM firadaboss/magento2_base:1
# FROM alexcheng/apache2-php7:7.1.11
# 
# LABEL maintainer="alexcheng1982@gmail.com"
# LABEL version="2.2.5"
# LABEL description="Magento 2.2.5"
# 
# ENV MAGENTO_VERSION 2.2.5
# ENV INSTALL_DIR /var/www/html
# ENV COMPOSER_HOME /var/www/.composer/
# 
# RUN curl -sS https://getcomposer.org/installer | php \
#     && mv composer.phar /usr/local/bin/composer
# COPY ./auth.json $COMPOSER_HOME
# 
# RUN requirements="libpng12-dev libmcrypt-dev libmcrypt4 libcurl3-dev libfreetype6 libjpeg-turbo8 libjpeg-turbo8-dev libpng12-dev libfreetype6-dev libicu-dev libxslt1-dev" \
#     && apt-get update \
#     && apt-get install -y $requirements \
#     && rm -rf /var/lib/apt/lists/* \
#     && docker-php-ext-install pdo_mysql \
#     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
#     && docker-php-ext-install gd \
#     && docker-php-ext-install mcrypt \
#     && docker-php-ext-install mbstring \
#     && docker-php-ext-install zip \
#     && docker-php-ext-install intl \
#     && docker-php-ext-install xsl \
#     && docker-php-ext-install soap \
#     && docker-php-ext-install bcmath \
#     && requirementsToRemove="libpng12-dev libmcrypt-dev libcurl3-dev libpng12-dev libfreetype6-dev libjpeg-turbo8-dev" \
#     && apt-get purge --auto-remove -y $requirementsToRemove
# 
# RUN chsh -s /bin/bash www-data
