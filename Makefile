GOFMT_FILES?=$$(find . -name '*.go' | grep -v vendor)

pre-commit: fmt lint test-cov

.PHONY: fmt
fmt:
	gofmt -w -s $(GOFMT_FILES)

.PHONY: fmtcheck
fmtcheck:
	@bash $(CURDIR)/tools/gofmtcheck.sh

.PHONY: lint
lint:
	golangci-lint run

.PHONY: test
test:
	go test -v ./...

.PHONY: test-cov
test-cov:
	go test -cover -coverprofile=coverage.txt ./...

