output "frontend_public_ip" {

  value = google_compute_instance.frontend_vm.network_interface[0].access_config[0].nat_ip
}

output "frontend_private_ip" {

  value = google_compute_instance.frontend_vm.network_interface[0].network_ip
}

output "mongodb_private_ip" {

  value = google_compute_instance.mongodb_vm.network_interface[0].network_ip
}

output "vpc_name" {

  value = google_compute_network.registration_vpc.name
}
