

variable "vms" {
  type = map(object({
    name                = string
    resource_group_name = string
    size                = string
    admin_username      = string
    admin_password      = string
    nic_name            = string
    os_disk = object({
      caching              = string
      storage_account_type = string

    })
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}

variable "location" {
  type = string
  
}