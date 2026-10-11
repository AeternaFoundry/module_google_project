output "projects_id" {
  description = "Map of id values across all projects, keyed the same as var.projects except keys with no id are omitted"
  value       = { for k, v in google_project.projects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_auto_create_network" {
  description = "Map of auto_create_network values across all projects, keyed the same as var.projects except keys with no auto_create_network are omitted"
  value       = { for k, v in google_project.projects : k => v.auto_create_network if v.auto_create_network != null }
}
output "projects_billing_account" {
  description = "Map of billing_account values across all projects, keyed the same as var.projects except keys with no billing_account are omitted"
  value       = { for k, v in google_project.projects : k => v.billing_account if v.billing_account != null && length(v.billing_account) > 0 }
}
output "projects_deletion_policy" {
  description = "Map of deletion_policy values across all projects, keyed the same as var.projects except keys with no deletion_policy are omitted"
  value       = { for k, v in google_project.projects : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "projects_effective_labels" {
  description = "Map of effective_labels values across all projects, keyed the same as var.projects except keys with no effective_labels are omitted"
  value       = { for k, v in google_project.projects : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "projects_folder_id" {
  description = "Map of folder_id values across all projects, keyed the same as var.projects except keys with no folder_id are omitted"
  value       = { for k, v in google_project.projects : k => v.folder_id if v.folder_id != null && length(v.folder_id) > 0 }
}
output "projects_labels" {
  description = "Map of labels values across all projects, keyed the same as var.projects except keys with no labels are omitted"
  value       = { for k, v in google_project.projects : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "projects_name" {
  description = "Map of name values across all projects, keyed the same as var.projects except keys with no name are omitted"
  value       = { for k, v in google_project.projects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "projects_number" {
  description = "Map of number values across all projects, keyed the same as var.projects except keys with no number are omitted"
  value       = { for k, v in google_project.projects : k => v.number if v.number != null && length(v.number) > 0 }
}
output "projects_org_id" {
  description = "Map of org_id values across all projects, keyed the same as var.projects except keys with no org_id are omitted"
  value       = { for k, v in google_project.projects : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "projects_project_id" {
  description = "Map of project_id values across all projects, keyed the same as var.projects except keys with no project_id are omitted"
  value       = { for k, v in google_project.projects : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "projects_tags" {
  description = "Map of tags values across all projects, keyed the same as var.projects except keys with no tags are omitted"
  value       = { for k, v in google_project.projects : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "projects_terraform_labels" {
  description = "Map of terraform_labels values across all projects, keyed the same as var.projects except keys with no terraform_labels are omitted"
  value       = { for k, v in google_project.projects : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

