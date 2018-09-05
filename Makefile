build: down
	docker-compose build

database:
	docker-compose run web rake db:create
	docker-compose run web rake db:migrate

console: database
	docker-compose run --rm web rails c

seed:
	docker-compose run --rm web rake db:migrate:reset
	docker-compose run --rm web rake db:seed

up: build database
	docker-compose up -d

down:
	docker-compose down

update: down up

clean: down
	sudo rm -rf docker/database
	docker images prune

dev: database
	docker-compose run -p 3000:3000 web rails s

test: rubocop specs

specs:
	docker-compose run web rake db:create RAILS_ENV=test
	docker-compose run web rake db:migrate RAILS_ENV=test
	docker-compose run web rspec spec

rubocop:
	docker-compose run web rubocop -a
