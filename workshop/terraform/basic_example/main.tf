provider "google" {
  region = "europe-west1"
  # credentials = "${file("~/path/to/creds.json")}"
}

resource "google_storage_bucket" "mybucket" {
  name     = "${var.bucket_name}"
  project  = "${var.project_id}"
  location = "EU"

  force_destroy = true
}

resource "google_service_account" "bucket-sa" {
  account_id   = "bucket-vm"
  display_name = "VM service account"
  project      = "${var.project_id}"
}

resource "google_storage_bucket_iam_member" "myvm" {
  count  = "${length(var.storage_bucket_roles)}"
  role   = "${element(var.storage_bucket_roles, count.index)}"
  bucket = "${google_storage_bucket.mybucket.name}"
  member = "serviceAccount:${google_service_account.bucket-sa.email}"
}


resource "google_compute_instance" "vm" {
  project      = "${var.project_id}"
  name         = "${var.vm_name}"
  machine_type = "f1-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {} # Ephemeral IP
  }

  metadata_startup_script = "echo hi > /terraform_workshop.txt"

  service_account {
    email  = "${google_service_account.bucket-sa.email}"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

}