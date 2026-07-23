# Frontend VM
resource "google_compute_instance" "frontend_vm" {

  name         = "frontend-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = [
    "frontend",
    "ssh",
    "http-server",
    "https-server",
    "flask"
  ]
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
    }
  }

  network_interface {

    subnetwork = google_compute_subnetwork.public_subnet.id

    access_config {
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file("~/.ssh/gcp_key.pub")}"
  }
}

# MongoDB VM
resource "google_compute_instance" "mongodb_vm" {

  name         = "mongodb-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = [
    "ssh",
    "mongodb"
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
    }
  }

  network_interface {

    subnetwork = google_compute_subnetwork.private_subnet.id

    # No access_config
    # This VM will NOT get an External IP
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file("~/.ssh/gcp_key.pub")}"
  }
}

# Fronted_QA_VM
resource "google_compute_instance" "frontend_qa_vm" {

  name         = "frontend-qa-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = [
    "frontend",
    "qa",
    "ssh",
    "http-server",
    "https-server",
    "flask"
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
    }
  }

  network_interface {

    subnetwork = google_compute_subnetwork.public_subnet.id

    access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file("~/.ssh/gcp_key.pub")}"
  }
}

# Frontend_Prod_VM

resource "google_compute_instance" "frontend_prod_vm" {

  name         = "frontend-prod-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = [
    "frontend",
    "prod",
    "ssh",
    "http-server",
    "https-server",
    "flask"
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
    }
  }

  network_interface {

    subnetwork = google_compute_subnetwork.public_subnet.id

    access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file("~/.ssh/gcp_key.pub")}"
  }
}

