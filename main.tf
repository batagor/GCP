module "app" {
  source = "./modules/compute-engine-ip/"

  count_compute = 1
  count_start = 1
  compute_name = "app-vm"
  compute_type = "e2-micro"
  compute_zones = ["asia-southeast2-a"]

  images_name = "centos-8-v20210817"
  size_root_disk = 30
  type_root_disk = "pd-standard"
  pub_key_file = "./pubkey/id.pub"
  gce_ssh_user = "user"

  compute_labels = {
    "cretedfor" = "recruitement"
  }
}

module "db" {
  source = "./modules/compute-engine-noip/"

  count_compute = 1
  count_start = 1
  compute_name = "db-vm"
  compute_type = "e2-micro"
  compute_zones = ["asia-southeast2-a"]

  images_name = "centos-8-v20210817"
  size_root_disk = 30
  type_root_disk = "pd-standard"
  pub_key_file = "./pubkey/id.pub"
  gce_ssh_user = "user"

  compute_labels = {
    "cretedfor" = "recruitementdb"
  }
}