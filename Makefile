include .env

up:
	docker-compose up -d
down:
	docker-compose down
rebuild:
	docker-compose up -d --build --force-recreate --no-deps
cli:
	docker-compose exec --user="${UID}:${GID}" php-fpm-gd sh
test_db:
	docker-compose exec --user="${UID}:${GID}" php-fpm-gd bin/console dbal:run-sql \
	"select 'succesfully connected!' as result;"
