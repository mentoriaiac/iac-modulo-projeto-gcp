output "google_billing_account" {
  value = data.google_billing_account.acct.id
}

output "google_org_id" {
  value = data.google_organization.org.org_id
}

output "project_id" {
  value = module.project_factory.project_id
}

output "project_name" {
  value = module.project_factory.project_name
}

output "project_number" {
  value = module.project_factory.project_number
}
