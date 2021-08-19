module "vm_instance_1" {
  source  = "airasia/vm_instance/google"
  version = "2.13.0"
  boot_disk_image = "global/images/family/centos-8"
  instance_name = "vm-recrut-app-01"
  name_suffix = "recruitement"
  network_tags = "recruit-app"
  vpc_subnetwork = "alpha1-vpc"
  allow_login = true
  boot_disk_size = 20
  create_external_ip = true
  external_ip_name = "vm-recrut-app-01-pip"
  fw_allowed_ports = 22
  machine_type = "e2-micro"
}