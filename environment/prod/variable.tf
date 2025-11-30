variable "location" {
  type = string
}

variable "rgs" {
  type = map(object({
    name     = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    resource_group_name = string
    address_space       = string
  }))

}


variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = string
  }))
}

variable "nics" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    pip_name             = string
    ip_configuration = map(object({
      name                          = string
      private_ip_address_allocation = string
    }))
  }))

}

variable "pips" {
  type = map(object({
    name                = string
    resource_group_name = string
    allocation_method   = string

  }))
}

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

