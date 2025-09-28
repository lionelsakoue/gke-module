output "istio_namespace" {
  description = "The namespace where Istio control plane is installed"
  value       = kubernetes_namespace.istio_system.metadata[0].name
}

output "istio_base_status" {
  description = "Status of the Istio base Helm release"
  value       = helm_release.istio_base.status
}

output "istiod_status" {
  description = "Status of the Istiod Helm release"
  value       = helm_release.istiod.status
}
