variable "managed_disks" {
  description = <<EOT
Map of managed_disks, attributes below
Required:
    - create_option
    - location
    - name
    - resource_group_name
    - storage_account_type
Optional:
    - disk_access_id
    - disk_encryption_set_id
    - disk_iops_read_only
    - disk_iops_read_write
    - disk_mbps_read_only
    - disk_mbps_read_write
    - disk_size_gb
    - edge_zone
    - gallery_image_reference_id
    - hyper_v_generation
    - image_reference_id
    - logical_sector_size
    - max_shares
    - network_access_policy
    - on_demand_bursting_enabled
    - optimized_frequent_attach_enabled
    - os_type
    - performance_plus_enabled
    - public_network_access_enabled
    - secure_vm_disk_encryption_set_id
    - security_type
    - source_resource_id
    - source_uri
    - storage_account_id
    - tags
    - tier
    - trusted_launch_enabled
    - upload_size_bytes
    - zone
    - encryption_settings (block):
        - disk_encryption_key (required, block):
            - secret_url (required)
            - source_vault_id (required)
        - key_encryption_key (optional, block):
            - key_url (required)
            - source_vault_id (required)
EOT

  type = map(object({
    create_option                     = string
    location                          = string
    name                              = string
    resource_group_name               = string
    storage_account_type              = string
    os_type                           = optional(string)
    performance_plus_enabled          = optional(bool)
    public_network_access_enabled     = optional(bool)
    secure_vm_disk_encryption_set_id  = optional(string)
    security_type                     = optional(string)
    storage_account_id                = optional(string)
    source_uri                        = optional(string)
    optimized_frequent_attach_enabled = optional(bool)
    tags                              = optional(map(string))
    tier                              = optional(string)
    trusted_launch_enabled            = optional(bool)
    source_resource_id                = optional(string)
    on_demand_bursting_enabled        = optional(bool)
    logical_sector_size               = optional(number)
    max_shares                        = optional(number)
    upload_size_bytes                 = optional(number)
    image_reference_id                = optional(string)
    hyper_v_generation                = optional(string)
    gallery_image_reference_id        = optional(string)
    edge_zone                         = optional(string)
    disk_size_gb                      = optional(number)
    disk_mbps_read_write              = optional(number)
    disk_mbps_read_only               = optional(number)
    disk_iops_read_write              = optional(number)
    disk_iops_read_only               = optional(number)
    disk_encryption_set_id            = optional(string)
    disk_access_id                    = optional(string)
    network_access_policy             = optional(string)
    zone                              = optional(string)
    encryption_settings = optional(object({
      disk_encryption_key = object({
        secret_url      = string
        source_vault_id = string
      })
      key_encryption_key = optional(object({
        key_url         = string
        source_vault_id = string
      }))
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_managed_disk's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: storage_account_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: create_option
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: edge_zone
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: logical_sector_size
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: gallery_image_reference_id
  #   source:    [from validate.SharedImageVersionID] !ok
  # path: gallery_image_reference_id
  #   source:    [from validate.SharedImageVersionID] err != nil
  # path: os_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: disk_size_gb
  #   source:    [from validate.ManagedDiskSizeGB] value < 0 || value > 65536
  # path: upload_size_bytes
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: disk_iops_read_write
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: disk_mbps_read_write
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: disk_iops_read_only
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: disk_mbps_read_only
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] !ok
  # path: disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] err != nil
  # path: network_access_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: disk_access_id
  #   source:    [from diskaccesses.ValidateDiskAccessID] !ok
  # path: disk_access_id
  #   source:    [from diskaccesses.ValidateDiskAccessID] err != nil
  # path: max_shares
  #   condition: value >= 2 && value <= 10
  #   message:   must be between 2 and 10
  # path: secure_vm_disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] !ok
  # path: secure_vm_disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] err != nil
  # path: security_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: hyper_v_generation
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: zone
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

