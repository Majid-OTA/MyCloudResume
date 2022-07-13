resource "google_compute_instance" "server" {
  project = "my-cloud-resume-349920"
  name = "mycloudresume"
  machine_type = "e2-micro"
  zone = "us-central1-a"
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