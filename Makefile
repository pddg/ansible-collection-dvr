SHELL := /bin/bash

MOLECULE_CMD=pipenv run molecule
PLAYBOOK_CMD=pipenv run ansible-playbook

scenario=default

lint:
	pipenv run yamllint .
	pipenv run ansible-lint

molecule-%:
	cd roles/${*} && $(MOLECULE_CMD) test -s $(scenario) --parallel

test-%:
	cd tests && $(PLAYBOOK_CMD) -i hosts.yml roles/${*}/test.yml -K

doc-serve:
	pipenv run mkdocs serve

doc-build:
	pipenv run mkdocs build

doc-release:
	pipenv run mkdocs gh-deploy
	
