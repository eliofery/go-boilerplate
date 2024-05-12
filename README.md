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

## Use

You need to download the library binaries.

```bash
make download-bin
```

Run in development mode.

```bash
make run-dev
```

Run in product mode.

```bash
make run
```
