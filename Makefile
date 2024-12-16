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

start: _start_command _urls

stop:
	@docker compose stop

clean:
	@docker compose down -t 0 -v --remove-orphans
