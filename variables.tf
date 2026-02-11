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
    performance_plus_enabled          = optional(bool) # Default: false
    public_network_access_enabled     = optional(bool) # Default: true
    secure_vm_disk_encryption_set_id  = optional(string)
    security_type                     = optional(string)
    storage_account_id                = optional(string)
    source_uri                        = optional(string)
    optimized_frequent_attach_enabled = optional(bool) # Default: false
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
    network_access_policy             = optional(string) # Default: "AllowAll"
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
}

