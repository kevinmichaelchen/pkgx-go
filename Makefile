.PHONY: all
all:
	docker build -t pkgx-go:latest .
	docker run --rm -it pkgx-go:latest go version
