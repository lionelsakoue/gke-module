# Namespace for Istio control plane
resource "kubernetes_namespace" "istio_system" {
  metadata {
    name = var.namespace
    labels = {
      istio-injection = "disabled" # no auto-injection in control plane ns
    }
  }
}

# Install Istio base CRDs
resource "helm_release" "istio_base" {
  name       = "istio-base"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "base"
  version    = var.istio_version
  namespace  = var.namespace

  depends_on = [kubernetes_namespace.istio_system]
}

# Install Istiod (control plane)
resource "helm_release" "istiod" {
  name       = "istiod"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "istiod"
  version    = var.istio_version
  namespace  = var.namespace

  depends_on = [helm_release.istio_base]
}
