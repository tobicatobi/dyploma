.PHONY: create-cluster delete-cluster application-expose application-delete application-create secret-create 

cluster-create:
	kind create cluster --config cluster.yaml

cluster-delete:
	kind delete cluster --name test-cluster

application-expose:
	kubectl port-forward svc/wordpress 8080:80&

secret-create:
	kubectl create secret generic --from-literal=password=SuperPassword mysql-pass

application-create:
	kustomize build application | kubectl apply -f -

application-delete:
	kustomize build application | kubectl delete -f -
	