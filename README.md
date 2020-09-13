# controller-k8s-cronjob ![Releases](https://github.com/transnano/controller-k8s-cronjob/workflows/Releases/badge.svg) ![Publish Docker image](https://github.com/transnano/controller-k8s-cronjob/workflows/Publish%20Docker%20image/badge.svg) ![Vulnerability Scan](https://github.com/transnano/controller-k8s-cronjob/workflows/Vulnerability%20Scan/badge.svg)

![License](https://img.shields.io/github/license/transnano/controller-k8s-cronjob?style=flat)

![Container image version](https://img.shields.io/docker/v/transnano/controller-k8s-cronjob/latest?style=flat)
![Container image size](https://img.shields.io/docker/image-size/transnano/controller-k8s-cronjob/latest?style=flat)
![Container image pulls](https://img.shields.io/docker/pulls/transnano/controller-k8s-cronjob?style=flat)

![GitHub go.mod Go version](https://img.shields.io/github/go-mod/go-version/transnano/controller-k8s-cronjob)
[![Go Report Card](https://goreportcard.com/badge/github.com/transnano/controller-k8s-cronjob)](https://goreportcard.com/report/github.com/transnano/controller-k8s-cronjob)

See the [Tutorial: Building CronJob - The Kubebuilder Book](https://book.kubebuilder.io/cronjob-tutorial/cronjob-tutorial.html) documentation.

## Overview

<img src="./overview.drawio.svg">

## Demo

Download [Kustomize(Binaries)](https://kubernetes-sigs.github.io/kustomize/installation/binaries/)

```sh
$ kustomize version
{Version:kustomize/v3.8.2 GitCommit:e2973f6ecc9be6187cfd5ecf5e180f842249b3c6 BuildDate:2020-08-29T17:44:01Z GoOs:linux GoArch:amd64}
```

make

```sh
$ make install
$ make run
$ kubectl apply -f config/samples/
```

```sh
$ kubectl get crd
NAME                                             CREATED AT
...
guestbook2s.webapp.my.domain                     2020-09-07T12:56:01Z
guestbooks.webapp.my.domain                      2020-09-07T12:56:01Z
...
```

```sh
$ kubectl create namespace controller-k8s-cronjob-system
```

or

```sh
$ cat my-namespace.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: controller-k8s-cronjob-system

$ kubectl create -f ./my-namespace.yaml
```

```sh
$ make deploy IMG=transnano/controller-k8s-cronjob:latest
```

```sh
$ kubectl get pods --namespace=controller-k8s-cronjob-system
NAME                                                            READY   STATUS    RESTARTS   AGE
controller-k8s-cronjob-controller-manager-5df9b76756-dsmvc   2/2     Running   0          37s
```

```sh
$ kubectl get svc --namespace=controller-k8s-cronjob-system
NAME                                                           TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)    AGE
controller-k8s-cronjob-controller-manager-metrics-service   ClusterIP   10.8.3.65    <none>        8443/TCP   8m45s
```

```sh
$ kubectl get deploy --namespace=controller-k8s-cronjob-system
NAME                                           READY   UP-TO-DATE   AVAILABLE   AGE
controller-k8s-cronjob-controller-manager   1/1     1            1           13m
```

### Extra

```sh
$ kubectl api-resources --namespaced=true
$ kubectl api-resources --namespaced=false
```

```sh
$ kubectl get all
```
