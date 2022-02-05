provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "ghost" {

  name = "ghost"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "ghost"
  namespace  = "default"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
