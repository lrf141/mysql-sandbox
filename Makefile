CLUSTER_NAME="mysql-sandbox"
all: up
up:
	kind create cluster --name $(CLUSTER_NAME)
down:
	kind delete cluster --name $(CLUSTER_NAME)

