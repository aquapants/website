build:
	docker compose -f docker-compose.dev.yaml build

dev:
	docker compose -f docker-compose.dev.yaml up --build --renew-anon-volumes
