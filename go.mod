module github.com/transnano/controller-k8s-cronjob

go 1.13

require (
	github.com/go-logr/logr v1.2.3
	github.com/onsi/ginkgo v1.16.5
	github.com/onsi/gomega v1.19.0
	github.com/robfig/cron v1.2.0
	k8s.io/api v0.24.2
	k8s.io/apimachinery v0.24.2
	k8s.io/client-go/v12 v12.0.0
	sigs.k8s.io/controller-runtime v0.13.1
)
