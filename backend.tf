terraform {
  backend "gcs" {
    bucket  = "muha_tf_state"
    prefix  = "terraform/state_cloud-recruitement
  }
}