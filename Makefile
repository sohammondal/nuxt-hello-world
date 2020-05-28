install:
	docker-compose -f docker-compose.builder.yml run --rm install
dev:
	docker-compose up
build:
	docker-compose -f docker-compose.builder.yml run --rm build
start:
	docker-compose -f docker-compose.builder.yml run --rm --service-ports start
generate:
	docker-compose -f docker-compose.builder.yml run --rm generate
exec:
	docker-compose exec dev $(cmd)
up:
	docker-compose -f docker-compose.prod.yml up --build