module github.com/transnano/controller-k8s-cronjob

go 1.13

require (
	github.com/go-logr/logr v1.0.0
	github.com/onsi/ginkgo v1.16.0
	github.com/onsi/gomega v1.13.0
	github.com/robfig/cron v1.2.0
	k8s.io/api v0.21.2
	k8s.io/apimachinery v0.23.0
	k8s.io/client-go/v12 v12.0.0
	sigs.k8s.io/controller-runtime v0.9.2
)
