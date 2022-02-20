
variable "google_billing_account_display_name" {
  description = "The display name of the billing account."
  type        = string
}

variable "google_project_name" {
  description = "The name of the project."
  type        = string
}

variable "google_organization_domain_name" {
  description = "The domain name of the Organization."
  type        = string
}

data "google_billing_account" "acct" {
  display_name = var.google_billing_account_display_name
  open         = true
}

variable "activate_apis" {
  type        = list(string)
  description = "Lista das apis que serão ativadas no projeto do GCP."
  default     = []
  sensitive   = false
}
