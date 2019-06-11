provider "google" {
  region  = "${var.region}"
  project = "${var.project_id}"
}

resource "random_id" "trainee" {
  count       = "${length(var.trainees)}"
  byte_length = "4"
}

resource "google_project" "trainee" {
  count           = "${length(var.trainees)}"
  name            = "trainee-${element(random_id.trainee.*.hex, count.index)}"
  project_id      = "trainee-${element(random_id.trainee.*.hex, count.index)}"
  billing_account = "${var.billing_id}"
  org_id          = "${var.org_id}"
}

data "google_iam_policy" "trainee" {
  count = "${length(var.trainees)}"

  binding = {
    role = "roles/owner"

    members = [
      "user:${var.email_owner}",
    ]
  }

  binding = {
    role = "roles/editor"

    members = [
      "user:${element(var.trainees, count.index)}",
    ]
  }
}

resource "google_project_iam_policy" "trainee" {
  count       = "${length(var.trainees)}"
  project     = "${element(google_project.trainee.*.project_id, count.index)}"
  policy_data = "${element(data.google_iam_policy.trainee.*.policy_data, count.index)}"
}

resource "google_project_services" "trainee" {
  count   = "${length(var.trainees)}"
  project = "${element(google_project.trainee.*.project_id, count.index)}"

  services = "${var.services}"
}

resource "google_compute_instance" "trainee" {
  count        = "${length(var.trainees)}"
  name         = "default"
  machine_type = "f1-micro"
  zone         = "europe-west1-b"

  can_ip_forward = true

  project = "${element(google_project_services.trainee.*.project, count.index)}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata {
    ssh-keys = "root:${file("~/.ssh/id_rsa.pub")}"
  }

  network_interface {
    network = "default"

    access_config {} # Ephemeral IP
  }

  metadata_startup_script = "echo hi > /terraform_workshop.txt"

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
