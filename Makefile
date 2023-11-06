build:
	docker compose -f dev.docker-compose.yaml build

dev:
	docker compose -f dev.docker-compose.yaml up --build --renew-anon-volumes
