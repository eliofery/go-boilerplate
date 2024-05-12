# Go Project Template

This is a starter template for creating projects in the Golang programming language.

## Linter

You need to download the linter binary file.

```bash
make download-bin
```

You need to install [pre-commit](https://pre-commit.com/index.html#install).

```bash
pip install pre-commit
pre-commit install
```

Checking code for style guide compliance. Additionally, code verification is performed automatically upon commit.

```bash
make lint
```
