# controller-k8s-cronjob ![Releases](https://github.com/transnano/controller-k8s-cronjob/workflows/Releases/badge.svg) ![Publish Docker image](https://github.com/transnano/controller-k8s-cronjob/workflows/Publish%20Docker%20image/badge.svg) ![Vulnerability Scan](https://github.com/transnano/controller-k8s-cronjob/workflows/Vulnerability%20Scan/badge.svg) ![Haskell Dockerfile Linter](https://github.com/transnano/controller-k8s-cronjob/workflows/Haskell%20Dockerfile%20Linter/badge.svg) ![Code Scanning(CodeQL)](https://github.com/transnano/controller-k8s-cronjob/workflows/Code%20Scanning(CodeQL)/badge.svg)

![License](https://img.shields.io/github/license/transnano/controller-k8s-cronjob?style=flat)

![Container image version](https://img.shields.io/docker/v/transnano/controller-k8s-cronjob/latest?style=flat)
![Container image size](https://img.shields.io/docker/image-size/transnano/controller-k8s-cronjob/latest?style=flat)
![Container image pulls](https://img.shields.io/docker/pulls/transnano/controller-k8s-cronjob?style=flat)

![GitHub go.mod Go version](https://img.shields.io/github/go-mod/go-version/transnano/controller-k8s-cronjob)
[![Go Report Card](https://goreportcard.com/badge/github.com/transnano/controller-k8s-cronjob)](https://goreportcard.com/report/github.com/transnano/controller-k8s-cronjob)

See the [Tutorial: Building CronJob - The Kubebuilder Book](https://book.kubebuilder.io/cronjob-tutorial/cronjob-tutorial.html) documentation.

## Overview

<img src="./overview.drawio.svg">

## Develop

### Scaffolding Out Our Project

program     | version
----------- | ------:
go          |  1.15.1
kubebuilder |   2.3.1

```sh
$ go version
$ kubebuilder version
```

<details>
<summary>Result</summary>

```sh
$ go version
go version go1.15.1 linux/amd64
$ kubebuilder version
Version: version.Version{KubeBuilderVersion:"2.3.1", KubernetesVendor:"1.16.4", GitCommit:"8b53abeb4280186e494b726edf8f54ca7aa64a49", BuildDate:"2020-03-26T16:42:00Z", GoOs:"unknown", GoArch:"unknown"}
```
</details>

```sh
$ go mod init github.com/transnano/controller-k8s-cronjob
$ kubebuilder init --domain transnano.net --license apache2 --owner "Transnano"
```

<details>
<summary>Result</summary>

```sh
$ go mod init github.com/transnano/controller-k8s-cronjob
go: creating new go.mod: module github.com/transnano/controller-k8s-cronjob
$ kubebuilder init --domain transnano.net --license apache2 --owner "Transnano"Writing scaffold for you to edit...
Get controller runtime:
$ go get sigs.k8s.io/controller-runtime@v0.5.0
go: downloading sigs.k8s.io/controller-runtime v0.5.0
go: downloading k8s.io/apimachinery v0.17.2
go: downloading k8s.io/client-go v0.17.2
go: downloading golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
go: downloading github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d
go: downloading github.com/evanphx/json-patch v4.5.0+incompatible
go: downloading github.com/pkg/errors v0.8.1
go: downloading github.com/google/gofuzz v1.0.0
go: downloading github.com/json-iterator/go v1.1.8
go: downloading github.com/prometheus/client_golang v1.0.0
go: downloading gopkg.in/inf.v0 v0.9.1
go: downloading github.com/modern-go/reflect2 v1.0.1
go: downloading github.com/prometheus/common v0.4.1
go: downloading sigs.k8s.io/yaml v1.1.0
go: downloading github.com/beorn7/perks v1.0.0
go: downloading github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
go: downloading gopkg.in/yaml.v2 v2.2.4
go: downloading k8s.io/apiextensions-apiserver v0.17.2
go: downloading k8s.io/utils v0.0.0-20191114184206-e782cd3c129f
go: downloading golang.org/x/sys v0.0.0-20190826190057-c7b8b68b1456
go: downloading gopkg.in/fsnotify.v1 v1.4.7
go: downloading github.com/golang/protobuf v1.3.2
go: downloading github.com/google/go-cmp v0.3.0
go: downloading github.com/google/uuid v1.1.1
go: downloading k8s.io/api v0.17.2
go: downloading k8s.io/klog v1.0.0
go: downloading github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90
go: downloading github.com/imdario/mergo v0.3.6
go: downloading github.com/davecgh/go-spew v1.1.1
go: downloading gomodules.xyz/jsonpatch/v2 v2.0.1
go: downloading github.com/hashicorp/golang-lru v0.5.1
go: downloading golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
go: downloading github.com/matttproud/golang_protobuf_extensions v1.0.1
go: downloading github.com/prometheus/procfs v0.0.2
go: downloading golang.org/x/net v0.0.0-20191004110552-13f9640d40b9
go: downloading github.com/googleapis/gnostic v0.3.1
go: downloading github.com/go-logr/logr v0.1.0
go: downloading golang.org/x/crypto v0.0.0-20190820162420-60c769a6c586
go: downloading github.com/spf13/pflag v1.0.5
go: downloading github.com/golang/groupcache v0.0.0-20180513044358-24b0969c4cb7
go: downloading google.golang.org/appengine v1.5.0
go: downloading k8s.io/kube-openapi v0.0.0-20191107075043-30be4d16710a
go: downloading golang.org/x/text v0.3.2
Update go.mod:
$ go mod tidy
go: downloading go.uber.org/zap v1.10.0
go: downloading github.com/go-logr/zapr v0.1.0
go: downloading github.com/onsi/ginkgo v1.11.0
go: downloading cloud.google.com/go v0.38.0
go: downloading github.com/stretchr/testify v1.4.0
go: downloading github.com/onsi/gomega v1.8.1
go: downloading gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127
go: downloading github.com/pmezard/go-difflib v1.0.0
go: downloading github.com/kr/pretty v0.1.0
go: downloading golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7
go: downloading github.com/fsnotify/fsnotify v1.4.7
go: downloading go.uber.org/multierr v1.1.0
go: downloading go.uber.org/atomic v1.3.2
go: downloading github.com/hpcloud/tail v1.0.0
go: downloading github.com/kr/text v0.1.0
go: downloading gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7
Running make:
$ make
go: creating new go.mod: module tmp
go: downloading sigs.k8s.io/controller-tools v0.2.5
go: found sigs.k8s.io/controller-tools/cmd/controller-gen in sigs.k8s.io/controller-tools v0.2.5
go: downloading k8s.io/apimachinery v0.17.0
go: downloading github.com/spf13/cobra v0.0.5
go: downloading k8s.io/api v0.17.0
go: downloading k8s.io/apiextensions-apiserver v0.17.0
go: downloading github.com/fatih/color v1.7.0
go: downloading gopkg.in/yaml.v3 v3.0.0-20190905181640-827449938966
go: downloading github.com/gobuffalo/flect v0.2.0
go: downloading golang.org/x/tools v0.0.0-20190920225731-5eefd052ad72
go: downloading github.com/inconshreveable/mousetrap v1.0.0
go: downloading github.com/mattn/go-isatty v0.0.8
go: downloading github.com/mattn/go-colorable v0.1.2
/go/bin/controller-gen object:headerFile="hack/boilerplate.go.txt" paths="./..."
go fmt ./...
go vet ./...
go build -o bin/manager main.go
Next: define a resource with:
$ kubebuilder create api
```
</details>

### 

`main.go`でマネージャーを作成しているが、名前空間を指定していないため、すべての名前空間を監視します。

```go
	mgr, err := ctrl.NewManager(ctrl.GetConfigOrDie(), ctrl.Options{
		Scheme:             scheme,
		MetricsBindAddress: metricsAddr,
		Port:               9443,
		// Namespace:          "",
		LeaderElection:   enableLeaderElection,
		LeaderElectionID: "77aadf3c.transnano.net",
	})
```

Ref: [Every journey needs a start, every program a main - The Kubebuilder Book](https://book.kubebuilder.io/cronjob-tutorial/empty-main.html)

<details>
<summary>Result</summary>

```sh

```
</details>

### Adding a new API

```sh
$ kubebuilder create api --group batch --version v1alpha1 --kind CronJob
```

<details>
<summary>Result</summary>

```sh
$ kubebuilder create api --group batch --version v1alpha1 --kind CronJob
Create Resource [y/n]
y
Create Controller [y/n]
y
Writing scaffold for you to edit...
api/v1alpha1/cronjob_types.go
controllers/cronjob_controller.go
Running make:
$ make
/go/bin/controller-gen object:headerFile="hack/boilerplate.go.txt" paths="./..."
go fmt ./...
go vet ./...
go build -o bin/manager main.go
```
</details>

### Designing an API

```sh
$ vim ./api/v1alpha1/cronjob_types.go
```

<details>
<summary>Result</summary>

```sh

```
</details>

### Implementing a controller

```sh
$ vim ./controllers/cronjob_controller.go
```

<details>
<summary>Result</summary>

```sh

```
</details>

### Implementing defaulting/validating webhooks

```sh
$ kubebuilder create webhook --group batch --version v1alpha1 --kind CronJob --defaulting --programmatic-validation
```

<details>
<summary>Result</summary>

```sh
$ kubebuilder create webhook --group batch --version v1alpha1 --kind CronJob --defaulting --programmatic-validation
Writing scaffold for you to edit...
api/v1alpha1/cronjob_webhook.go
```
</details>

```sh
$ vim ./api/v1alpha1/cronjob_webhook.go
```

<details>
<summary>Result</summary>

```sh

```
</details>

### Generate config files

```sh
$ make
```

<details>
<summary>Result</summary>

```sh
$ make
/go/bin/controller-gen object:headerFile="hack/boilerplate.go.txt" paths="./..."
go fmt ./...
go vet ./...
go build -o bin/manager main.go
```
</details>

## Demo

Run the following command from a location where you can connect to the cluster.

program    |          version
---------- | ---------------:
kubernetes | v1.17.9-gke.1504
go         |           1.15.2
kubectl    |          v1.19.1
kustomize  |           v3.8.4

### Running and deploying the controller

Download [Kustomize(Binaries)](https://kubernetes-sigs.github.io/kustomize/installation/binaries/)

```sh
$ curl -s "https://raw.githubusercontent.com/\
kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
$ sudo mv kustomize /usr/local/bin/
```

```sh
$ go version
$ kubectl version --short
$ kustomize version
```

<details>
<summary>Result</summary>

```sh
$ go version
go version go1.15.2 linux/amd64

$ kubectl version --short
Client Version: v1.19.1
Server Version: v1.17.9-gke.1504

$ kustomize version
{Version:kustomize/v3.8.4 GitCommit:8285af8cf11c0b202be533e02b88e114ad61c1a9 BuildDate:2020-09-19T15:39:21Z GoOs:linux GoArch:amd64}
```
</details>

```sh
$ openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out tls.crt -keyout tls.key
$ chmod 400 tls.key
$ ls tls.{crt,key}
tls.crt  tls.key
$ mkdir -p /tmp/k8s-webhook-server/serving-certs/
$ mv tls.{crt,key} /tmp/k8s-webhook-server/serving-certs/

$ make install
```

<details>
<summary>Result</summary>

```sh
$ openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out tls.crt -keyout tls.key
Generating a RSA private key
........++++
..............................................................................................................................................................................................................................................................................................................++++
writing new private key to 'tls.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:JP
State or Province Name (full name) [Some-State]:JP
Locality Name (eg, city) []:Tokyo
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Tokyo Ltd
Organizational Unit Name (eg, section) []:Docs
Common Name (e.g. server FQDN or YOUR name) []:hostname.example.com
Email Address []:admin@example.com

```
</details>

### 

```sh

```

[Google Cloud ShellにおけるGoの開発環境の構築](https://golangtokyo.github.io/codelab/cloud-shell-go-setup/#5)

<details>
<summary>Update go</summary>

```sh
$ wget -O - https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz | tar zxvf -
$ mv go go_1_15_2
$ export GOROOT=$HOME/go_1_15_2
$ export PATH=$GOROOT/bin:$PATH
$ go version
go version go1.15.2 linux/amd64
```
</details>

### make install

```sh
$ make install
```

<details>
<summary>Result</summary>

```sh
$ make install
/home/$USER/gopath/bin/controller-gen "crd:trivialVersions=true" rbac:roleName=manager-role webhook paths="./..." output:crd:artifacts:config=config/crd/bases
kustomize build config/crd | kubectl apply -f -
customresourcedefinition.apiextensions.k8s.io/cronjobs.batch.transnano.net created
```
</details>

### make run

```sh
$ make run
```

<details>
<summary>Result</summary>

```sh
$ make run
/home/$USER/gopath/bin/controller-gen object:headerFile="hack/boilerplate.go.txt" paths="./..."
go fmt ./...
go vet ./...
/home/$USER/gopath/bin/controller-gen "crd:trivialVersions=true" rbac:roleName=manager-role webhook paths="./..." output:crd:artifacts:config=config/crd/bases
go run ./main.go
2020-09-22T07:51:58.235Z        INFO    controller-runtime.metrics      metrics server is starting to listen    {"addr": ":8080"}
2020-09-22T07:51:58.235Z        INFO    controller-runtime.builder      Registering a mutating webhook  {"GVK": "batch.transnano.net/v1alpha1, Kind=CronJob", "path": "/mutate-batch-transnano-net-v1alpha1-cronjob"}
2020-09-22T07:51:58.235Z        INFO    controller-runtime.webhook      registering webhook     {"path": "/mutate-batch-transnano-net-v1alpha1-cronjob"}
2020-09-22T07:51:58.236Z        INFO    controller-runtime.builder      Registering a validating webhook        {"GVK": "batch.transnano.net/v1alpha1, Kind=CronJob", "path": "/validate-batch-transnano-net-v1alpha1-cronjob"}
2020-09-22T07:51:58.236Z        INFO    controller-runtime.webhook      registering webhook     {"path": "/validate-batch-transnano-net-v1alpha1-cronjob"}
2020-09-22T07:51:58.236Z        INFO    setup   starting manager
2020-09-22T07:51:58.438Z        INFO    controller-runtime.webhook.webhooks     starting webhook server
2020-09-22T07:51:58.438Z        INFO    controller      Starting EventSource    {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "source": "kind source: /, Kind="}
2020-09-22T07:51:58.438Z        INFO    controller-runtime.manager      starting metrics server {"path": "/metrics"}
2020-09-22T07:51:58.439Z        INFO    controller-runtime.certwatcher  Updated current TLS certificate
2020-09-22T07:51:58.440Z        INFO    controller-runtime.webhook      serving webhook server  {"host": "", "port": 9443}
2020-09-22T07:51:58.440Z        INFO    controller-runtime.certwatcher  Starting certificate watcher
2020-09-22T07:51:58.639Z        INFO    controller      Starting EventSource    {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "source": "kind source: /, Kind="}
2020-09-22T07:51:58.639Z        INFO    controller      Starting Controller     {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob"}
2020-09-22T07:51:58.639Z        INFO    controller      Starting workers        {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "worker count": 1}
2020-09-22T07:51:58.639Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:51:59.040Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:51:58.835Z", "next run": "2020-09-22T07:52:00.000Z", "current run": "2020-09-22T07:51:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761060"}}
2020-09-22T07:51:59.040Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:51:59.040Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:51:59.369Z        ERROR   controllers.CronJob     unable to create Job for CronJob        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:51:59.201Z", "next run": "2020-09-22T07:52:00.000Z", "current run": "2020-09-22T07:51:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761060"}, "error": "jobs.batch \"cronjob-sample-1600761060\" already exists"}
github.com/go-logr/zapr.(*zapLogger).Error
        /home/$USER/gopath/pkg/mod/github.com/go-logr/zapr@v0.1.0/zapr.go:128
github.com/transnano/controller-k8s-cronjob/controllers.(*CronJobReconciler).Reconcile
        /home/$USER/controller-k8s-cronjob/controllers/cronjob_controller.go:483
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).reconcileHandler
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:235
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).processNextWorkItem
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:209
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).worker
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:188
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:155
k8s.io/apimachinery/pkg/util/wait.BackoffUntil
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:156
k8s.io/apimachinery/pkg/util/wait.JitterUntil
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:133
k8s.io/apimachinery/pkg/util/wait.Until
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:90
2020-09-22T07:51:59.369Z        ERROR   controller      Reconciler error        {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default", "error": "jobs.batch \"cronjob-sample-1600761060\" already exists"}
github.com/go-logr/zapr.(*zapLogger).Error
        /home/$USER/gopath/pkg/mod/github.com/go-logr/zapr@v0.1.0/zapr.go:128
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).reconcileHandler
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:237
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).processNextWorkItem
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:209
sigs.k8s.io/controller-runtime/pkg/internal/controller.(*Controller).worker
        /home/$USER/gopath/pkg/mod/sigs.k8s.io/controller-runtime@v0.6.2/pkg/internal/controller/controller.go:188
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:155
k8s.io/apimachinery/pkg/util/wait.BackoffUntil
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:156
k8s.io/apimachinery/pkg/util/wait.JitterUntil
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:133
k8s.io/apimachinery/pkg/util/wait.Until
        /home/$USER/gopath/pkg/mod/k8s.io/apimachinery@v0.18.6/pkg/util/wait/wait.go:90
2020-09-22T07:52:00.370Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:52:00.696Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:00.531Z", "next run": "2020-09-22T07:53:00.000Z", "current run": "2020-09-22T07:52:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761120"}}
2020-09-22T07:52:00.696Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:52:00.696Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 2, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:52:00.860Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:00.860Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:00.860Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 2, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:52:01.022Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:01.022Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:01.022Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 2, "successful jobs": 0, "failed jobs": 0}
2020-09-22T07:52:01.183Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:01.183Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:01.228Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 1, "failed jobs": 0}
2020-09-22T07:52:01.389Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:01.389Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:01.389Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 1, "failed jobs": 0}
2020-09-22T07:52:01.550Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:01.550Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:02.167Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:52:02.331Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:02.331Z", "next run": "2020-09-22T07:53:00.000Z"}
2020-09-22T07:52:02.331Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:52:02.492Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:52:02.492Z", "next run": "2020-09-22T07:53:00.000Z"}

2020-09-22T07:53:00.000Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:53:00.327Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:00.162Z", "next run": "2020-09-22T07:54:00.000Z", "current run": "2020-09-22T07:53:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761180"}}
2020-09-22T07:53:00.327Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:53:00.327Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:53:00.488Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:00.488Z", "next run": "2020-09-22T07:54:00.000Z"}
2020-09-22T07:53:00.489Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:53:00.651Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:00.651Z", "next run": "2020-09-22T07:54:00.000Z"}
2020-09-22T07:53:00.651Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 2, "failed jobs": 0}
2020-09-22T07:53:00.812Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:00.812Z", "next run": "2020-09-22T07:54:00.000Z"}
2020-09-22T07:53:01.523Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:53:01.684Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:01.684Z", "next run": "2020-09-22T07:54:00.000Z"}
2020-09-22T07:53:01.684Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:53:01.845Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:53:01.845Z", "next run": "2020-09-22T07:54:00.000Z"}
2020-09-22T07:54:00.000Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:54:00.399Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:00.209Z", "next run": "2020-09-22T07:55:00.000Z", "current run": "2020-09-22T07:54:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761240"}}
2020-09-22T07:54:00.399Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:54:00.400Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:54:00.561Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:00.561Z", "next run": "2020-09-22T07:55:00.000Z"}
2020-09-22T07:54:00.561Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:54:00.721Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:00.721Z", "next run": "2020-09-22T07:55:00.000Z"}
2020-09-22T07:54:00.722Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 3, "failed jobs": 0}
2020-09-22T07:54:00.882Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:00.882Z", "next run": "2020-09-22T07:55:00.000Z"}
2020-09-22T07:54:02.121Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:54:02.281Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:02.281Z", "next run": "2020-09-22T07:55:00.000Z"}
2020-09-22T07:54:02.282Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:54:02.443Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:54:02.443Z", "next run": "2020-09-22T07:55:00.000Z"}
2020-09-22T07:55:00.000Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:55:00.327Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:00.161Z", "next run": "2020-09-22T07:56:00.000Z", "current run": "2020-09-22T07:55:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761300"}}
2020-09-22T07:55:00.327Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:55:00.328Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:55:00.488Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:00.488Z", "next run": "2020-09-22T07:56:00.000Z"}
2020-09-22T07:55:00.488Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:55:00.649Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:00.649Z", "next run": "2020-09-22T07:56:00.000Z"}
2020-09-22T07:55:00.649Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 4, "failed jobs": 0}
2020-09-22T07:55:00.811Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:00.811Z", "next run": "2020-09-22T07:56:00.000Z"}
2020-09-22T07:55:02.335Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:55:02.496Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:02.496Z", "next run": "2020-09-22T07:56:00.000Z"}
2020-09-22T07:55:02.496Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:55:02.657Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:55:02.657Z", "next run": "2020-09-22T07:56:00.000Z"}
2020-09-22T07:56:00.000Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:56:00.324Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:00.161Z", "next run": "2020-09-22T07:57:00.000Z", "current run": "2020-09-22T07:56:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761360"}}
2020-09-22T07:56:00.324Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:56:00.325Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:56:00.489Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:00.489Z", "next run": "2020-09-22T07:57:00.000Z"}
2020-09-22T07:56:00.489Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:56:00.651Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:00.651Z", "next run": "2020-09-22T07:57:00.000Z"}
2020-09-22T07:56:00.651Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 5, "failed jobs": 0}
2020-09-22T07:56:00.810Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:00.810Z", "next run": "2020-09-22T07:57:00.000Z"}
2020-09-22T07:56:02.012Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:56:02.174Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:02.174Z", "next run": "2020-09-22T07:57:00.000Z"}
2020-09-22T07:56:02.175Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:56:02.335Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:56:02.335Z", "next run": "2020-09-22T07:57:00.000Z"}
2020-09-22T07:57:00.000Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:57:00.367Z        DEBUG   controllers.CronJob     created Job for CronJob run     {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:00.185Z", "next run": "2020-09-22T07:58:00.000Z", "current run": "2020-09-22T07:57:00.000Z", "job": {"namespace": "default", "name": "cronjob-sample-1600761420"}}
2020-09-22T07:57:00.367Z        DEBUG   controller      Successfully Reconciled {"reconcilerGroup": "batch.transnano.net", "reconcilerKind": "CronJob", "controller": "cronjob", "name": "cronjob-sample", "namespace": "default"}
2020-09-22T07:57:00.368Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:57:00.529Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:00.529Z", "next run": "2020-09-22T07:58:00.000Z"}
2020-09-22T07:57:00.529Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:57:00.689Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:00.689Z", "next run": "2020-09-22T07:58:00.000Z"}
2020-09-22T07:57:00.689Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 1, "successful jobs": 6, "failed jobs": 0}
2020-09-22T07:57:00.849Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:00.849Z", "next run": "2020-09-22T07:58:00.000Z"}
2020-09-22T07:57:02.578Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 7, "failed jobs": 0}
2020-09-22T07:57:02.738Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:02.738Z", "next run": "2020-09-22T07:58:00.000Z"}
2020-09-22T07:57:02.738Z        DEBUG   controllers.CronJob     job count       {"cronjob": "default/cronjob-sample", "active jobs": 0, "successful jobs": 7, "failed jobs": 0}
2020-09-22T07:57:02.898Z        DEBUG   controllers.CronJob     no upcoming scheduled times, sleeping until next        {"cronjob": "default/cronjob-sample", "now": "2020-09-22T07:57:02.898Z", "next run": "2020-09-22T07:58:00.000Z"}
```
</details>

### Deploy the CronJob

```sh
$ kubectl create -f config/samples/batch_v1alpha1_cronjob.yaml
```

<details>
<summary>Result</summary>

```sh
$ kubectl create -f config/samples/batch_v1alpha1_cronjob.yaml
cronjob.batch.transnano.net/cronjob-sample created
```
</details>

### get Object

```sh
$ kubectl get cronjob.batch.transnano.net -o yaml
$ kubectl get job
```

<details>
<summary>Result</summary>

```sh
$ kubectl get cronjob.batch.transnano.net -o yaml
apiVersion: v1
items:
- apiVersion: batch.transnano.net/v1alpha1
  kind: CronJob
  metadata:
    creationTimestamp: "2020-09-22T07:27:03Z"
    generation: 1
    name: cronjob-sample
    namespace: default
    resourceVersion: "4085"
    selfLink: /apis/batch.transnano.net/v1alpha1/namespaces/default/cronjobs/cronjob-sample
    uid: b52c3d0f-1138-4cb7-be92-cfe961efb524
  spec:
    concurrencyPolicy: Allow
    jobTemplate:
      spec:
        template:
          spec:
            containers:
            - args:
              - /bin/sh
              - -c
              - date; echo Hello from the Kubernetes cluster
              image: busybox
              name: hello
            restartPolicy: OnFailure
    schedule: '*/1 * * * *'
    startingDeadlineSeconds: 60
kind: List
metadata:
  resourceVersion: ""

$ kubectl get job
NAME                        COMPLETIONS   DURATION   AGE
cronjob-sample-1600761060   1/1           2s         4m55s
cronjob-sample-1600761120   1/1           2s         4m53s
cronjob-sample-1600761180   1/1           1s         3m53s
cronjob-sample-1600761240   1/1           2s         2m53s
cronjob-sample-1600761300   1/1           2s         113s
cronjob-sample-1600761360   1/1           1s         53s
```
</details>

### make deploy

```sh
$ make deploy
```

<details>
<summary>Result</summary>

```sh
$ make deploy
/home/$USER/gopath/bin/controller-gen "crd:trivialVersions=true" rbac:roleName=manager-role webhook paths="./..." output:crd:artifacts:config=config/crd/bases
cd config/manager && kustomize edit set image controller=transnano/controller-k8s-cronjob:latest
kustomize build config/default | kubectl apply -f -
namespace/controller-k8s-cronjob-system created
customresourcedefinition.apiextensions.k8s.io/cronjobs.batch.transnano.net configured
role.rbac.authorization.k8s.io/controller-k8s-cronjob-leader-election-role created
clusterrole.rbac.authorization.k8s.io/controller-k8s-cronjob-manager-role created
clusterrole.rbac.authorization.k8s.io/controller-k8s-cronjob-proxy-role created
clusterrole.rbac.authorization.k8s.io/controller-k8s-cronjob-metrics-reader created
rolebinding.rbac.authorization.k8s.io/controller-k8s-cronjob-leader-election-rolebinding created
clusterrolebinding.rbac.authorization.k8s.io/controller-k8s-cronjob-manager-rolebinding created
clusterrolebinding.rbac.authorization.k8s.io/controller-k8s-cronjob-proxy-rolebinding created
service/controller-k8s-cronjob-controller-manager-metrics-service created
deployment.apps/controller-k8s-cronjob-controller-manager created
```
</details>

### 

```sh
$ 
```

<details>
<summary>Result</summary>

```sh
$ 
```
</details>

### 

```sh
$ 
```

<details>
<summary>Result</summary>

```sh
$ 
```
</details>

### 

```sh
$ 
```

<details>
<summary>Result</summary>

```sh
$ 
```
</details>

### Extra

```sh
$ kubectl api-resources --namespaced=true
$ kubectl api-resources --namespaced=false
```

```sh
$ kubectl get all
```
