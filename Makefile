.PHONY: install lint format test coverage docs docs-build clean

install:
	test -d .venv || uv venv
	uv pip install -e ".[dev]"
	pre-commit install

lint:
	ruff check src/ tests/
	ruff format --check src/ tests/
	mypy src/

format:
	ruff check --fix src/ tests/
	ruff format src/ tests/

test:
	pytest

coverage:
	pytest --cov --cov-report=term-missing --cov-report=xml

docs:
	uv pip install -e ".[docs]"
	uv run mkdocs serve

docs-build:
	uv pip install -e ".[docs]"
	uv run mkdocs build --strict

clean:
	rm -rf build/ dist/ *.egg-info .coverage htmlcov/ coverage.xml .mypy_cache/ .ruff_cache/ .pytest_cache/ site/
	find . -type d -name __pycache__ -exec rm -rf {} +
