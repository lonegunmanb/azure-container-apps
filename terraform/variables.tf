variable "resource_group_name" {
  default = "featbit-tio-rg"
}

variable "location" {
  default = "westeurope"
}

variable "redis" {
  type = object({
    capacity                      = number
    family                        = string
    sku_name                      = string
    enable_non_ssl_port           = bool
    minimum_tls_version           = string
    public_network_access_enabled = bool
  })
  default = {
    capacity            = 0
    family              = "C"
    sku_name            = "Basic"
    enable_non_ssl_port = false
    minimum_tls_version = "1.2"
    public_network_access_enabled = false
  }
}

variable "cosmos_account_name"{
  default = "featbit-mongodb"
}