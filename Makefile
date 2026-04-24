.PHONY: help serve build shell clean

help:
	@printf '%s\n' \
		'Targets:' \
		'  make serve  Start Hugo preview at http://localhost:1313' \
		'  make build  Run the production Hugo build check' \
		'  make shell  Open a shell in the Hugo container' \
		'  make clean  Remove generated Hugo output'

serve:
	docker compose up --build hugo

build:
	docker compose run --rm hugo --minify

shell:
	docker compose run --rm --entrypoint /bin/bash hugo

clean:
	rm -rf public resources .hugo_build.lock
