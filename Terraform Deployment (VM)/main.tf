resource "google_compute_instance" "server" {
  project = "my-cloud-resume-349920"
  name = "mycloudresume"
  machine_type = "e2-micro"
  zone = "us-central1-a"
  tags = ["web"]
  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20220706"
      size= 10
      type= "pd-standard"
    }
  } 
  network_interface {
    network = "default"
    access_config {
     }
    
    }
  }

  resource "google_compute_firewall" "default" {
  name    = "server-firewall"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"  
    ports    = ["80", "443", "8080", "1000-4000"]
  }
  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "default"

}