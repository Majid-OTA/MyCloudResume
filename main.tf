resource "google_compute_instance" "server" {
  project = "qwiklabs-gcp-01-cb5b498da450"
  name = "mycloudresume"
  machine_type = "e2-micro"
  zone = "us-central1-a"
  tags = ["http-server","https-server"]

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
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }
  source_tags = ["web"]
  target_tags = ["server"] #The target tag defines the Google Cloud VMs to which the rule applies.
  }