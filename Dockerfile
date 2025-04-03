FROM php:8.2-cli

# ติดตั้ง pdo_mysql extension
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /app
COPY . /app

CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]
