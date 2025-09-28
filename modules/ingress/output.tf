output "ingress_namespace" {
  description = "Namespace where the Istio ingress gateway is installed"
  value       = var.namespace
}

output "ingress_gateway_status" {
  description = "Status of the Istio ingress gateway Helm release"
  value       = helm_release.istio_ingress.status
}

output "ingress_gateway_name" {
  description = "Name of the Istio ingress gateway release"
  value       = helm_release.istio_ingress.name
}
