.PHONY: all
all: build push

.PHONY: build
build:
	docker build --tag emyrk/coder-jupyter-lab:latest .

.PHONY: push
push: build
	docker push emyrk/coder-jupyter-lab:latest

.PHONY:
start: build
	docker run --rm -it --entrypoint="/bin/bash" --name jupyter-lab emyrk/coder-jupyter-lab:latest
