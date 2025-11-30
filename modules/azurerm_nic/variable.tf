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


variable "location" {
  type = string
  
}