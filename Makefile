# Settings
.PHONY: bin

# Environments
LOCAL_BIN=$(CURDIR)/bin

build-bin: ## Building a binary project file for Linux
	GOOS=linux GOARCH=amd64 go build -o bin/http cmd/http/main.go
