include .env
SERVICE_VERSION = $(SERVICE_$(shell echo '$(service)' | tr '[:lower:]' '[:upper:]')_VERSION)

# Docker commands
build:
	- docker build ./services/service-$(service)/ -t calilio-service-$(service):$(SERVICE_VERSION)

up:
	- docker-compose -f docker-compose.yml up -d service-$(service)

restart:
	- docker-compose -f docker-compose.yml restart service-$(service)

down:
	- docker-compose -f docker-compose.yml down

rm:
	- docker-compose rm -s -v service-$(service)

exec:
	- docker-compose -f docker-compose.yml exec service-$(service) bash

logs:
	- docker-compose logs -f --tail 100 service-$(service)
