resource "helm_release" "traefik" {
  chart      = "traefik"
  name       = "traefik"
  namespace  = "ingress"
  repository = "https://helm.traefik.io/traefik"

  values = [
    file("${path.module}/values.yaml"),
  ]
}
