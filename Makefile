#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------------------
	@echo start
	@echo stop
	@echo clean
	@echo ----------------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------------
	@echo [Open WebUI] http://localhost:3000
	@echo ----------------------------------

_header:
	@echo ----------
	@echo Open WebUI
	@echo ----------

_start_command:
	@docker compose up -d

_start_command-traefik:
	@docker compose -f docker-compose.yml -f docker-compose.traefik.yml up -d

start: _start_command _urls

start-traefik: _start_command-traefik _urls

stop:
	@docker compose stop

logs:
	@docker compose logs

clean:
	@docker compose down -t 0 -v --remove-orphans
