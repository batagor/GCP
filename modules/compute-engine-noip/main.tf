##################
##COMPUTE ENGINE
##################
resource "google_compute_instance" "recruitement" {
  count	       = "${var.count_compute}"
  name         = "${format("%s-%d", var.compute_name, count.index + var.count_start)}"
  machine_type = "${var.compute_type}"
  zone         = "${element(var.compute_zones, count.index)}"

  boot_disk {
    initialize_params {
      image = "${var.images_name}"
      size  = "${var.size_root_disk}"
      type  = "${var.type_root_disk}"
    }
  }

  network_interface {
    subnetwork = "subnet-a-jakarta"
    
    # erase \\ on access_config if you want use public ip
    \\ access_config {}
  }

  # Enable if you want use metadata
  metadata = {
    sshKeys = "${var.gce_ssh_user}:${file(var.pub_key_file)}"
  }

  # Enable if you want use labels
  labels = "${var.compute_labels}"

  scheduling {
    on_host_maintenance = "MIGRATE"
    automatic_restart   = "true"
  }
}
