version=v1.13.2

# replace all namespace references with "kube-system", this works since we
# deploy all resources under "kube-system"
mvns=| sed -E 's|(\s*)namespace: "?cert-manager"?|\1namespace: "kube-system"|g'

get-yaml:
	curl -L https://github.com/jetstack/cert-manager/releases/download/$(version)/cert-manager.yaml $(mvns) > upstream-cert-manager.yaml
