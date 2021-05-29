resource "helm_release" "traefik" {
  chart      = "traefik"
  name       = "traefik"
  namespace  = "kube-system"
  repository = "https://helm.traefik.io/traefik"
  
  set {
    name  = "deployment.kind"
    value = "DaemonSet"
  }
  set {
    name  = "ports.web.redirectTo"
    value = "websecure"
  }
}
