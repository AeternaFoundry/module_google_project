resource "google_project" "projects" {
  for_each = var.projects

  name                = each.value.name
  project_id          = each.value.project_id
  auto_create_network = each.value.auto_create_network
  billing_account     = each.value.billing_account
  deletion_policy     = each.value.deletion_policy
  folder_id           = each.value.folder_id
  labels              = each.value.labels
  org_id              = each.value.org_id
  tags                = each.value.tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

