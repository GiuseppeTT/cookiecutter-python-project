.PHONY: setup
setup:
	poetry install --no-root
	pre-commit install --install-hooks

.PHONY: update
update:
	poetry self update
	poetry update
	pre-commit autoupdate

.PHONY: pre-commit
pre-commit:
	pre-commit run --all-files
