# Makefile
.PHONY: help
help:
	@echo "Commands:"
	@echo "install-docs          : installs docs requirements."
	@echo "docs                  : serve generated documentation from mkdocs."

# Installation
.PHONY: install
install:
	python -m pip install -e . --no-cache-dir

.PHONY: install-dev
install-dev:
	python -m pip install -e ".[dev]" --no-cache-dir
	pre-commit install
	pre-commit autoupdate

.PHONY: install-docs
install-docs:
	python -m pip install -e ".[docs]" --no-cache-dir

# Documentation
.PHONY: docs
docs:
	mkdocs serve

