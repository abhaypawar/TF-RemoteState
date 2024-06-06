# Configure the Google Cloud Provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Define a VPC network
resource "google_compute_network" "web_network" {
  name = "web-server-network"
}

# Create a subnet within the network
resource "google_compute_subnetwork" "web_subnet" {
  name          = "web-server-subnet"
  region        = google_compute_network.web_network.region
  ip_cidr_range = "10.1.0.0/16"
  network       = google_compute_network.web_network.self_link
}

# Create a Compute Engine instance
resource "google_compute_instance" "web_server" {
  name         = var.server_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.web_network.self_link
    subnetwork = google_compute_subnetwork.web_subnet.self_link

    access_config {
      nat_ip = "AUTO_ONLY"
    }
  }

  # Allow HTTP traffic on port 80
  firewall {
    allow {
      protocols = ["tcp"]
      ports = ["80"]
    }
    source_ranges = ["0.0.0.0/0"]
  }
}
