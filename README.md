# Cert Manager Manifests

Cert-manager manifests used for kustomize

`/kube-system` contains the base cert-manager configuration to deploy under the respective namespace (patch namespace in case you need to deploy elsewhere).
`/global` contains global kube resources (crds).

## Requires

- https://github.com/kubernetes-sigs/kustomize

```
go get -u sigs.k8s.io/kustomize
```
