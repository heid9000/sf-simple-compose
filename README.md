# Простой docker-compose шаблон для symfony6 приложений

## Запуск и проверка
1. Запустить: `make up`
2. ```cd docker/dockerfiles/fpm && ln ../../../.env environ && cd -```
3. После запуска ресурс находится по адрессу `http://localhost:8080`

## Остальное
- Код приложения находится в `./app`
- MariaDB можно найти по адресу `localhost:9887 db:mydb`
- Подключится к сервису php: `make cli`
- `Или можно использовать Makefile`
