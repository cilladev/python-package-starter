# package-name

[![CI](https://github.com/username/package-name/actions/workflows/ci.yml/badge.svg)](https://github.com/username/package-name/actions/workflows/ci.yml)
[![PyPI](https://img.shields.io/pypi/v/package-name)](https://pypi.org/project/package-name/)
[![Python](https://img.shields.io/pypi/pyversions/package-name)](https://pypi.org/project/package-name/)

A short description of the package.

## Installation

```bash
pip install package-name
```

Or with uv:

```bash
uv pip install package-name
```

## Usage

```python
import package_name
```

## Development

```bash
git clone https://github.com/username/package-name.git
cd package-name
make install
```

| Command | Description |
|---|---|
| `make install` | Install in editable mode with dev deps + pre-commit hooks |
| `make lint` | Run ruff check, ruff format check, and mypy |
| `make format` | Auto-fix lint issues and format code |
| `make test` | Run tests with pytest |
| `make coverage` | Run tests with coverage report |
| `make docs` | Serve docs locally (installs docs deps) |
| `make docs-build` | Build docs with strict mode |
| `make clean` | Remove build artifacts |

## Setup (when using this template)

1. Find-replace these placeholders:
   - `package-name` → your PyPI package name
   - `package_name` → your Python import name
   - `username` → your GitHub username
   - `Your Name` / `you@example.com` → your info
   - `A short description of the package.` → your description
2. Rename `src/package_name/` to `src/your_package_name/`
3. [Configure PyPI Trusted Publisher](https://docs.pypi.org/trusted-publishers/creating-a-project-through-oidc/) with workflow `release.yml` and environment `pypi`
4. Create a `pypi` environment in your GitHub repo settings
5. Run `make install`

## Release Checklist

1. Update version in `pyproject.toml`
2. Update `CHANGELOG.md`
3. Commit: `git commit -m "release: v0.x.0"`
4. Tag: `git tag v0.x.0`
5. Push: `git push origin main --tags`
6. GitHub Actions builds and publishes to PyPI via Trusted Publishers

## License

MIT
