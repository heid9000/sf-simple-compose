up:
	docker-compose up -d
down:
	docker-compose down
rebuild:
	docker-compose up -d --build --force-recreate --no-deps
cli:
	docker-compose exec php-fpm-gd su - admin -c "cd app && sh"
test_db:
	docker-compose exec php-fpm-gd bin/console dbal:run-sql "select 'succesfully connected!' as result;"
