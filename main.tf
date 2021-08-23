data "google_organization" "org" {
  domain = var.google_organization_domain_name
}
module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 11.1.1"

  name                        = var.google_project_name
  random_project_id           = false
  org_id                      = data.google_organization.org.org_id
  billing_account             = data.google_billing_account.acct.id
  disable_services_on_destroy = false

  activate_apis = var.activate_apis
}
