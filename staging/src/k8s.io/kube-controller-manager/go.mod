// This is a generated file. Do not edit directly.

module k8s.io/kube-controller-manager

go 1.13

require (
	k8s.io/apimachinery v0.19.0-beta.2
	k8s.io/component-base v0.19.0-beta.2
)

replace (
	github.com/imdario/mergo => github.com/imdario/mergo v0.3.5
	golang.org/x/net => golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => ../api
	k8s.io/apimachinery => ../apimachinery
	k8s.io/client-go => ../client-go
	k8s.io/component-base => ../component-base
	k8s.io/kube-controller-manager => ../kube-controller-manager
)
