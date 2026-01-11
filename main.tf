resource "azurerm_managed_disk" "managed_disks" {
  for_each = var.managed_disks

  create_option                     = each.value.create_option
  location                          = each.value.location
  name                              = each.value.name
  resource_group_name               = each.value.resource_group_name
  storage_account_type              = each.value.storage_account_type
  os_type                           = each.value.os_type
  performance_plus_enabled          = each.value.performance_plus_enabled
  public_network_access_enabled     = each.value.public_network_access_enabled
  secure_vm_disk_encryption_set_id  = each.value.secure_vm_disk_encryption_set_id
  security_type                     = each.value.security_type
  storage_account_id                = each.value.storage_account_id
  source_uri                        = each.value.source_uri
  optimized_frequent_attach_enabled = each.value.optimized_frequent_attach_enabled
  tags                              = each.value.tags
  tier                              = each.value.tier
  trusted_launch_enabled            = each.value.trusted_launch_enabled
  source_resource_id                = each.value.source_resource_id
  on_demand_bursting_enabled        = each.value.on_demand_bursting_enabled
  logical_sector_size               = each.value.logical_sector_size
  max_shares                        = each.value.max_shares
  upload_size_bytes                 = each.value.upload_size_bytes
  image_reference_id                = each.value.image_reference_id
  hyper_v_generation                = each.value.hyper_v_generation
  gallery_image_reference_id        = each.value.gallery_image_reference_id
  edge_zone                         = each.value.edge_zone
  disk_size_gb                      = each.value.disk_size_gb
  disk_mbps_read_write              = each.value.disk_mbps_read_write
  disk_mbps_read_only               = each.value.disk_mbps_read_only
  disk_iops_read_write              = each.value.disk_iops_read_write
  disk_iops_read_only               = each.value.disk_iops_read_only
  disk_encryption_set_id            = each.value.disk_encryption_set_id
  disk_access_id                    = each.value.disk_access_id
  network_access_policy             = each.value.network_access_policy
  zone                              = each.value.zone

  dynamic "encryption_settings" {
    for_each = each.value.encryption_settings != null ? [each.value.encryption_settings] : []
    content {
      disk_encryption_key {
        secret_url      = encryption_settings.value.disk_encryption_key.secret_url
        source_vault_id = encryption_settings.value.disk_encryption_key.source_vault_id
      }
      dynamic "key_encryption_key" {
        for_each = encryption_settings.value.key_encryption_key != null ? [encryption_settings.value.key_encryption_key] : []
        content {
          key_url         = key_encryption_key.value.key_url
          source_vault_id = key_encryption_key.value.source_vault_id
        }
      }
    }
  }
}

