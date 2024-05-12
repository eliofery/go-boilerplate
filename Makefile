# Settings
.PHONY: bin

# Environments
LOCAL_BIN=$(CURDIR)/bin

build-bin: ## Building a binary project file for Linux
	GOOS=linux GOARCH=amd64 go build -o bin/http cmd/http/main.go

download-bin: ## Download library binaries
	GOBIN=$(LOCAL_BIN) go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.58.1

lint: ## Checking code with a linter
	$(LOCAL_BIN)/golangci-lint run ./... --whole-files --new-from-rev HEAD --config .golangci.yaml
