version=v1.0.1

mvns=| sed -E 's|(\s*)namespace: "?cert-manager"?|\1namespace: "kube-system"|g'

get-yaml:
	curl -L https://github.com/jetstack/cert-manager/releases/download/$(version)/cert-manager.yaml $(mvns) > upstream-cert-manager.yaml
