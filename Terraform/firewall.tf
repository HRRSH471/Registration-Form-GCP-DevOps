# Allow SSH from Internet
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh"]
}

# Allow HTTP
resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["http-server"]
}

# Allow HTTPS
resource "google_compute_firewall" "allow_https" {
  name    = "allow-https"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["https-server"]
}

# Allow Flask (optional for testing)
resource "google_compute_firewall" "allow_flask" {
  name    = "allow-flask"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["5000"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["flask"]
}

# Allow Internal Communication
resource "google_compute_firewall" "allow_internal" {
  name    = "allow-internal"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["10.0.0.0/16"]
}

# Allow MongoDB only inside VPC
resource "google_compute_firewall" "allow_mongodb" {

  name    = "allow-mongodb"
  network = google_compute_network.registration_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }

  source_tags = ["frontend"]

  target_tags = ["mongodb"]
}
