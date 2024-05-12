# Settings
.PHONY: bin

# Environments
LOCAL_BIN=$(CURDIR)/bin

build-bin: ## Building a binary project file for Linux
	GOOS=linux GOARCH=amd64 go build -o bin/http cmd/http/main.go

download-bin: ## Download library binaries
	GOBIN=$(LOCAL_BIN) go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.58.1
	GOBIN=$(LOCAL_BIN) go install github.com/cortesi/modd/cmd/modd@v0.8

lint: ## Checking code with a linter
	$(LOCAL_BIN)/golangci-lint run ./... --whole-files --new-from-rev HEAD --config .golangci.yaml

run: ## Run project
	$(LOCAL_BIN)/http

run-dev: ## Run project in development mode
	$(LOCAL_BIN)/modd
