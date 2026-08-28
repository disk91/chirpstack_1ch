POSTGRESIP=$(shell docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' `docker ps | grep postgres | cut -d " " -f 1`) 
REDISIP=$(shell docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' `docker ps | grep redi | cut -d " " -f 1`) 
MQTTIP=$(shell docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' `docker ps | grep mosqui | cut -d " " -f 1`) 
NETWORK=$(shell docker network ls | grep chirpstack | cut -d " " -f 1)

.FORCE:

help: .FORCE
	echo "Run make with install, start ... option"

install: .FORCE
	rm ./postgresql/.not_empty

pull: .FORCE
	docker compose -f ./docker-compose.yml pull --ignore-pull-failures

start: .FORCE
	docker compose -f ./docker-compose.yml up -d

stop: .FORCE
	docker compose -f ./docker-compose.yml stop