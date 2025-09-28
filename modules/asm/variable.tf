variable "namespace" {
  description = "Namespace where Istio control plane is installed"
  type        = string
  default     = "istio-system"
}

variable "istio_version" {
  description = "Version of Istio to install"
  type        = string
  default     = "1.24.2" # pick your target version
}
