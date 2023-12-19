deploy-prod:
	gcloud run deploy website --image us-central1-docker.pkg.dev/aquapants-website/website/site --region us-central1

testing: build-push-testing deploy-testing

deploy-testing:
	gcloud run deploy site-testing --image us-central1-docker.pkg.dev/aquapants-website/website/site-testing --region us-central1

build-push-testing: build-testing
	docker compose -f docker-compose.testing.yaml push

build-testing:
	docker compose -f docker-compose.testing.yaml build

push: build
	docker compose -f docker-compose.prod.yaml push

build:
	docker compose -f docker-compose.prod.yaml build

dev:
	docker compose -f docker-compose.dev.yaml up --build --renew-anon-volumes
