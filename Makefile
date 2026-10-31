.PHONY: help build up pull down logs ps clean restart

COMPOSE=docker compose

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

clean:
	$(COMPOSE) down --rmi all --volumes --remove-orphans
	docker volume prune -f
	docker builder prune -f

logs:
	$(COMPOSE) logs

ps:
	$(COMPOSE) ps

restart: down up

help:
	@echo "Available commands:"
	@echo "  make up                 Pull, build & start"
	@echo "  make down               Stop containers"
	@echo "  make clean              Remove containers, images, volumes"
	@echo "  make logs               Follow container logs"
	@echo "  make ps                 List running containers"
	@echo "  make restart            Restart the application (still keeps volumes)"

.DEFAULT_GOAL=help