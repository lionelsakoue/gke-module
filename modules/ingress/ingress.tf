resource "helm_release" "istio_ingress" {
  name       = "ingressgateway"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "gateway"
  version    = var.istio_version
  namespace  = var.namespace

  values = [
    yamlencode({
      global = {
        proxy = {
          image = "gcr.io/istio-release/proxyv2:1.24.2"
        }
      }
    })
  ]

  timeout = 600
  wait    = true
}
