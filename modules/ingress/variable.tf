variable "namespace" {
  description = "Namespace where ingress gateway will be installed"
  type        = string
}
variable "istio_version" {
  description = "Version of Istio to use for ingress gateway"
  type        = string
  default     = "1.24.2"
}
