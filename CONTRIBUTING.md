# Contributing

## Setup

```bash
git clone https://github.com/username/package-name.git
cd package-name
make install
```

This creates a virtualenv, installs all dev dependencies, and sets up pre-commit hooks.

## Development workflow

1. Create a branch: `git checkout -b feature/your-feature`
2. Make changes
3. Run `make lint` and `make test`
4. Open a pull request against `main`

## Code standards

- Type hints on all function signatures
- Ruff for linting and formatting (`make lint` / `make format`)
- Mypy strict mode for type checking
- Tests required for new functionality (target 80%+ coverage)

## Makefile commands

| Command | Description |
|---|---|
| `make install` | Install in editable mode with dev deps + pre-commit hooks |
| `make lint` | Run ruff check, ruff format check, and mypy |
| `make format` | Auto-fix lint issues and format code |
| `make test` | Run tests with pytest |
| `make coverage` | Run tests with coverage report |
| `make clean` | Remove build artifacts |

## Releasing

See [Release Checklist](README.md#release-checklist) in the README.
