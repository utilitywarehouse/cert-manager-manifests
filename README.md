# Cert Manager Manifests

Cert-manager manifests used for kustomize

`/kube-system` contains the base cert-manager configuration to deploy under the respective namespace (patch namespace in case you need to deploy elsewhere).
`/global` contains global kube resources (crds).

## Requires

- https://github.com/kubernetes-sigs/kustomize

```
go get -u sigs.k8s.io/kustomize
```

## Upstream Manifests

the proposed [way](https://docs.cert-manager.io/en/latest/getting-started/install/kubernetes.html) is using helm to generate manifests from upstream 

```
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm fetch 'jetstack/cert-manager'
helm template --namespace kube-system --name cert-manager --set webhook.enabled=false --set cainjector.enabled=false cert-manager-v0.9.1.tgz
```
