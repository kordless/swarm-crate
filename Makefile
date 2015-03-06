PROJECT = crate
REGISTRY = registry.giantswarm.io
USERNAME :=  $(shell swarm user)
DOMAIN = $(USERNAME)-crate.gigantic.io

docker-build:
	docker build -t $(REGISTRY)/$(USERNAME)/$(PROJECT) .

docker-run: docker-build
	docker run -p 4200:4200 --rm -ti $(REGISTRY)/$(USERNAME)/$(PROJECT)

docker-push: docker-build
	docker push $(REGISTRY)/$(USERNAME)/$(PROJECT)

docker-pull:
	docker pull $(REGISTRY)/$(USERNAME)/$(PROJECT)

swarm-up: docker-push
	swarm up --var=username=$(USERNAME) --var=domain=$(DOMAIN)
