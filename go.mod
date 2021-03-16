module github.com/transnano/controller-k8s-cronjob

go 1.13

require (
	github.com/go-logr/logr v0.4.0
	github.com/onsi/ginkgo v1.15.2
	github.com/onsi/gomega v1.11.0
	github.com/robfig/cron v1.2.0
	k8s.io/api v0.20.4
	k8s.io/apimachinery v0.20.4
	k8s.io/client-go v0.20.4
	sigs.k8s.io/controller-runtime v0.8.3
)
