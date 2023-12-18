deploy-testing:
	gcloud run deploy site-testing --image us-central1-docker.pkg.dev/aquapants-website/website/site-testing --region us-central1

build-push-testing: build-testing
	docker compose -f docker-compose.testing.yaml push

build-testing:
	docker compose -f docker-compose.testing.yaml build

build:
	docker compose -f docker-compose.dev.yaml build

dev:
	docker compose -f docker-compose.dev.yaml up --build --renew-anon-volumes
