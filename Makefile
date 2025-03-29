CLUSTER_NAME=mysql-sandbox
KIND_VERSION=v0.27.0

all: up
up:
	kind create cluster --name $(CLUSTER_NAME)
down:
	kind delete cluster --name $(CLUSTER_NAME)
setup: setup-kind
setup-kind:
	mkdir -p ./bin
	curl -Lo ./bin/kind https://kind.sigs.k8s.io/dl/v0.27.0/kind-linux-amd64
	chmod a+x ./bin/kind

