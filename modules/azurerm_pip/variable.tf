variable "pips" {
  type = map(object({
    name                = string
    resource_group_name = string
    allocation_method   = string
  }))
}

variable "location" {
  type = string

}
