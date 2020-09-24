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
The are include as part of the release in github: `https://github.com/jetstack/cert-manager/releases/download/v1.0.1/cert-manager.yaml`

In order to properly update the base one should roughly follow the below steps

1. Get upstream manifests via release file
2. Split it into cluster and namespaced resources
3. Extract cluster role bindings and update examples
4. Remove `metadata.namespace` where necessary
5. Change default `cert-manager` namespace where needed
