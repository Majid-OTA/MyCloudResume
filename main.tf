resource "google_compute_instance" "server" {
  project = "my-cloud-resume-349920"
  name = "mycloudresume"
  zone = "us-central1-a"
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
image = "ubuntu-2204-jammy-v20220706"
    size= 10
    type= "pd_standard"
    }
  } 
  network_interface {
    network = "default"
    
  }
  } 