variable "vnets" {
  type = map(object({
    name                = string
    resource_group_name = string
    address_space       = string
  }))

}

variable "location" {
  type = string

}
