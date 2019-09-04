# Cert Manager Manifests

Cert-manager manifests used for kustomize

`/namespaced` contains the base cert-manager configuration that gets deployed under apps namespace.
`/cluster` contains cluster scoped resources.
`/example` contains an example deployment of the above

## Requires

- https://github.com/kubernetes-sigs/kustomize

```
go get -u sigs.k8s.io/kustomize
```

## Upstream Manifests

the proposed [way](https://docs.cert-manager.io/en/latest/getting-started/install/kubernetes.html) is using helm to generate manifests from upstream. 

```
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm fetch 'jetstack/cert-manager'
helm template --namespace kube-system --name cert-manager --set webhook.enabled=false --set cainjector.enabled=false cert-manager-v0.9.1.tgz
```

In order to properly update the base one should roughly follow the below steps
1. Get upstream manifests via helm templates
2. Split it into cluster and namespaced resources
3. Extract cluster role bindings and update examples
4. Remove `metadata.namespace` where necessary
