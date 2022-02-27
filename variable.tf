variable "dns_config" {
  type = map(any)
  default = {
    name                         = "example-zone"
    display_name                         = "dev"
    description                  = "Example DNS zone"
    visibility                   = "private"
    project_name                 = "testproject"
    billing_account_display_name = "dev"
    rrdatas                      = "34.123.49.78"
  }
}