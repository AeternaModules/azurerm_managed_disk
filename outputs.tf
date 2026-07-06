output "managed_disks" {
  description = "All managed_disk resources"
  value       = azurerm_managed_disk.managed_disks
}
output "managed_disks_create_option" {
  description = "List of create_option values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.create_option]
}
output "managed_disks_disk_access_id" {
  description = "List of disk_access_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_access_id]
}
output "managed_disks_disk_encryption_set_id" {
  description = "List of disk_encryption_set_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_encryption_set_id]
}
output "managed_disks_disk_iops_read_only" {
  description = "List of disk_iops_read_only values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_iops_read_only]
}
output "managed_disks_disk_iops_read_write" {
  description = "List of disk_iops_read_write values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_iops_read_write]
}
output "managed_disks_disk_mbps_read_only" {
  description = "List of disk_mbps_read_only values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_mbps_read_only]
}
output "managed_disks_disk_mbps_read_write" {
  description = "List of disk_mbps_read_write values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_mbps_read_write]
}
output "managed_disks_disk_size_gb" {
  description = "List of disk_size_gb values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.disk_size_gb]
}
output "managed_disks_edge_zone" {
  description = "List of edge_zone values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.edge_zone]
}
output "managed_disks_encryption_settings" {
  description = "List of encryption_settings values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.encryption_settings]
}
output "managed_disks_gallery_image_reference_id" {
  description = "List of gallery_image_reference_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.gallery_image_reference_id]
}
output "managed_disks_hyper_v_generation" {
  description = "List of hyper_v_generation values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.hyper_v_generation]
}
output "managed_disks_image_reference_id" {
  description = "List of image_reference_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.image_reference_id]
}
output "managed_disks_location" {
  description = "List of location values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.location]
}
output "managed_disks_logical_sector_size" {
  description = "List of logical_sector_size values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.logical_sector_size]
}
output "managed_disks_max_shares" {
  description = "List of max_shares values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.max_shares]
}
output "managed_disks_name" {
  description = "List of name values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.name]
}
output "managed_disks_network_access_policy" {
  description = "List of network_access_policy values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.network_access_policy]
}
output "managed_disks_on_demand_bursting_enabled" {
  description = "List of on_demand_bursting_enabled values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.on_demand_bursting_enabled]
}
output "managed_disks_optimized_frequent_attach_enabled" {
  description = "List of optimized_frequent_attach_enabled values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.optimized_frequent_attach_enabled]
}
output "managed_disks_os_type" {
  description = "List of os_type values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.os_type]
}
output "managed_disks_performance_plus_enabled" {
  description = "List of performance_plus_enabled values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.performance_plus_enabled]
}
output "managed_disks_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.public_network_access_enabled]
}
output "managed_disks_resource_group_name" {
  description = "List of resource_group_name values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.resource_group_name]
}
output "managed_disks_secure_vm_disk_encryption_set_id" {
  description = "List of secure_vm_disk_encryption_set_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.secure_vm_disk_encryption_set_id]
}
output "managed_disks_security_type" {
  description = "List of security_type values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.security_type]
}
output "managed_disks_source_resource_id" {
  description = "List of source_resource_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.source_resource_id]
}
output "managed_disks_source_uri" {
  description = "List of source_uri values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.source_uri]
}
output "managed_disks_storage_account_id" {
  description = "List of storage_account_id values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.storage_account_id]
}
output "managed_disks_storage_account_type" {
  description = "List of storage_account_type values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.storage_account_type]
}
output "managed_disks_tags" {
  description = "List of tags values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.tags]
}
output "managed_disks_tier" {
  description = "List of tier values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.tier]
}
output "managed_disks_trusted_launch_enabled" {
  description = "List of trusted_launch_enabled values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.trusted_launch_enabled]
}
output "managed_disks_upload_size_bytes" {
  description = "List of upload_size_bytes values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.upload_size_bytes]
}
output "managed_disks_zone" {
  description = "List of zone values across all managed_disks"
  value       = [for k, v in azurerm_managed_disk.managed_disks : v.zone]
}

