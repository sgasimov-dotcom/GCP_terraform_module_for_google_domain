module "example" {
  source = "../"
  default = {
    name                         = "company.qa.com"
    description                  = "Example DNS zone"
    visibility                   = "private"
    project_name                 = "testproject"
    billing_account_display_name = "dev"
    rrdatas                      = ["34.123.49.78"] # will create record based on the changes [google_compute_instance.frontend.network_interface[0].access_config[0].nat_ip]
  }
}
