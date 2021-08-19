terraform {
  backend "gcs" {
    bucket  = "muha_tf_state"
    prefix  = "terraform/statecloudrecruitment
  }
}