provider "google" {
  project     = "round-axiom-374919"
  region      = var.region
 
  credentials = "round-axiom-374919-27d9976112c0.json"
}

resource "google_compute_instance" "default1" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
 
  tags = ["foo" , "bar" , "web"]

  boot_disk {
    initialize_params {
      image = var.image
      size = var.size
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
    metadata = {
    foo = "bar"
  }

  metadata_startup_script = ""

  attached_disk {
    source = var.namedisk2
  }

}

resource "google_compute_disk" "default" {
  name         = var.namedisk2
  size         = var.sizedisk2
  zone         = var.zone
}

resource "google_compute_firewall" "default" {
  name    = var.firewallname 
  network = var.network
  source_tags = ["web"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "icmp"
  }

  target_tags = ["web"]
}