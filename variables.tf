variable "projects" {
  description = <<EOT
Map of projects, attributes below
Required:
    - name
    - project_id
Optional:
    - auto_create_network
    - billing_account
    - deletion_policy
    - folder_id
    - labels
    - org_id
    - tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                = string
    project_id          = string
    auto_create_network = optional(bool)
    billing_account     = optional(string)
    deletion_policy     = optional(string)
    folder_id           = optional(string)
    labels              = optional(map(string))
    org_id              = optional(string)
    tags                = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.projects : (
        v.deletion_policy == null || (contains(["PREVENT", "ABANDON", "DELETE"], v.deletion_policy))
      )
    ])
    error_message = "must be one of: \"PREVENT\", \"ABANDON\", \"DELETE\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

