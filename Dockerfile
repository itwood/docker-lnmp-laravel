FROM lnmp:latest



# 安装Composer并更换镜像源
RUN php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && composer config -g repo.packagist composer https://packagist.phpcomposer.com

RUN mkdir -p /www
WORKDIR /www/

# 下载Laravel
RUN composer global require laravel/installer \
    && composer create-project --prefer-dist laravel/laravel app 5.5.*

WORKDIR /www/app
# 下载Laravel-admin
RUN composer require encore/laravel-admin \
    && php artisan vendor:publish --provider="Encore\Admin\AdminServiceProvider" \
    && php artisan admin:install