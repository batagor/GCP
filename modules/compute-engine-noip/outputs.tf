output "private_ip" {
  description = "list private ip on compute instance"
  value       = ["${google_compute_instance.recruitement.*.network_interface.0.network_ip}"]
}
