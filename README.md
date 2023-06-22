# Простой docker-compose шаблон для symfony6 приложений

## Запуск и проверка
1. Запустить: `docker-compose up -d`
2. После запуска ресурс находится по адрессу `http://localhost:8080`

## Остальное
- Код приложения находится в `./app`
- MariaDB можно найти по адресу `localhost:9887 db:mydb`
- Подключится к сервису php: `docker-compose exec php-fpm-gd sh`
- `Или можно использовать Makefile`
