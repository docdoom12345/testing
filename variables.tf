variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}