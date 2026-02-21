.PHONY: install lint format test coverage clean

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

clean:
	rm -rf build/ dist/ *.egg-info .coverage htmlcov/ coverage.xml .mypy_cache/ .ruff_cache/ .pytest_cache/
	find . -type d -name __pycache__ -exec rm -rf {} +
