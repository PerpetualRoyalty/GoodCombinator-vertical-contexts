.PHONY: install-dev validate docs test ci

PYTHON ?= python3

install-dev:
	$(PYTHON) -m pip install -r requirements-dev.txt

validate:
	$(PYTHON) scripts/validate_contexts.py

test:
	pytest -q

docs:
	$(PYTHON) scripts/render_context_docs.py

ci: install-dev validate test docs
	@echo "CI tasks completed."