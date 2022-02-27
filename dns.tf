resource "google_dns_managed_zone" "example-zone" {
  name        = var.dns_config["name"]
  dns_name    = "example-${random_id.rnd.hex}.com."
  description = var.dns_config["description"]
  visibility  = var.dns_config["visibility"]
}

resource "random_id" "rnd" {
  byte_length = 4
}

resource "google_dns_record_set" "instance1" {
  name = "instance1.${google_dns_managed_zone.example-zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.example-zone.name

  rrdatas = [var.dns_config["rrdatas"]]
}