.PHONY: compose

compose:
	@cd ./node/ && CGO_ENABLED=0 make build
	@cd ./pool/ && CGO_ENABLED=0 make build
	@docker-compose build
	@docker-compose up
