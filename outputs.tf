output "managed_disks_id" {
  description = "Map of id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_disks_create_option" {
  description = "Map of create_option values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.create_option if v.create_option != null && length(v.create_option) > 0 }
}
output "managed_disks_disk_access_id" {
  description = "Map of disk_access_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_access_id if v.disk_access_id != null && length(v.disk_access_id) > 0 }
}
output "managed_disks_disk_encryption_set_id" {
  description = "Map of disk_encryption_set_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_encryption_set_id if v.disk_encryption_set_id != null && length(v.disk_encryption_set_id) > 0 }
}
output "managed_disks_disk_iops_read_only" {
  description = "Map of disk_iops_read_only values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_iops_read_only if v.disk_iops_read_only != null }
}
output "managed_disks_disk_iops_read_write" {
  description = "Map of disk_iops_read_write values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_iops_read_write if v.disk_iops_read_write != null }
}
output "managed_disks_disk_mbps_read_only" {
  description = "Map of disk_mbps_read_only values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_mbps_read_only if v.disk_mbps_read_only != null }
}
output "managed_disks_disk_mbps_read_write" {
  description = "Map of disk_mbps_read_write values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_mbps_read_write if v.disk_mbps_read_write != null }
}
output "managed_disks_disk_size_gb" {
  description = "Map of disk_size_gb values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.disk_size_gb if v.disk_size_gb != null }
}
output "managed_disks_edge_zone" {
  description = "Map of edge_zone values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.edge_zone if v.edge_zone != null && length(v.edge_zone) > 0 }
}
output "managed_disks_encryption_settings" {
  description = "Map of encryption_settings values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.encryption_settings if v.encryption_settings != null && length(v.encryption_settings) > 0 }
}
output "managed_disks_gallery_image_reference_id" {
  description = "Map of gallery_image_reference_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.gallery_image_reference_id if v.gallery_image_reference_id != null && length(v.gallery_image_reference_id) > 0 }
}
output "managed_disks_hyper_v_generation" {
  description = "Map of hyper_v_generation values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.hyper_v_generation if v.hyper_v_generation != null && length(v.hyper_v_generation) > 0 }
}
output "managed_disks_image_reference_id" {
  description = "Map of image_reference_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.image_reference_id if v.image_reference_id != null && length(v.image_reference_id) > 0 }
}
output "managed_disks_location" {
  description = "Map of location values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_disks_logical_sector_size" {
  description = "Map of logical_sector_size values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.logical_sector_size if v.logical_sector_size != null }
}
output "managed_disks_max_shares" {
  description = "Map of max_shares values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.max_shares if v.max_shares != null }
}
output "managed_disks_name" {
  description = "Map of name values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_disks_network_access_policy" {
  description = "Map of network_access_policy values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.network_access_policy if v.network_access_policy != null && length(v.network_access_policy) > 0 }
}
output "managed_disks_on_demand_bursting_enabled" {
  description = "Map of on_demand_bursting_enabled values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.on_demand_bursting_enabled if v.on_demand_bursting_enabled != null }
}
output "managed_disks_optimized_frequent_attach_enabled" {
  description = "Map of optimized_frequent_attach_enabled values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.optimized_frequent_attach_enabled if v.optimized_frequent_attach_enabled != null }
}
output "managed_disks_os_type" {
  description = "Map of os_type values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.os_type if v.os_type != null && length(v.os_type) > 0 }
}
output "managed_disks_performance_plus_enabled" {
  description = "Map of performance_plus_enabled values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.performance_plus_enabled if v.performance_plus_enabled != null }
}
output "managed_disks_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "managed_disks_resource_group_name" {
  description = "Map of resource_group_name values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "managed_disks_secure_vm_disk_encryption_set_id" {
  description = "Map of secure_vm_disk_encryption_set_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.secure_vm_disk_encryption_set_id if v.secure_vm_disk_encryption_set_id != null && length(v.secure_vm_disk_encryption_set_id) > 0 }
}
output "managed_disks_security_type" {
  description = "Map of security_type values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.security_type if v.security_type != null && length(v.security_type) > 0 }
}
output "managed_disks_source_resource_id" {
  description = "Map of source_resource_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.source_resource_id if v.source_resource_id != null && length(v.source_resource_id) > 0 }
}
output "managed_disks_source_uri" {
  description = "Map of source_uri values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.source_uri if v.source_uri != null && length(v.source_uri) > 0 }
}
output "managed_disks_storage_account_id" {
  description = "Map of storage_account_id values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "managed_disks_storage_account_type" {
  description = "Map of storage_account_type values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.storage_account_type if v.storage_account_type != null && length(v.storage_account_type) > 0 }
}
output "managed_disks_tags" {
  description = "Map of tags values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "managed_disks_tier" {
  description = "Map of tier values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.tier if v.tier != null && length(v.tier) > 0 }
}
output "managed_disks_trusted_launch_enabled" {
  description = "Map of trusted_launch_enabled values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.trusted_launch_enabled if v.trusted_launch_enabled != null }
}
output "managed_disks_upload_size_bytes" {
  description = "Map of upload_size_bytes values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.upload_size_bytes if v.upload_size_bytes != null }
}
output "managed_disks_zone" {
  description = "Map of zone values across all managed_disks, keyed the same as var.managed_disks"
  value       = { for k, v in azurerm_managed_disk.managed_disks : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

