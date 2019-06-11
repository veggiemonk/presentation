variable "project_id" {
    default = "trainee-2e8ccd53"
}

variable "bucket_name" {
  default = "bucket-12334512312"
}

variable "vm_name" {
  default = "my-great-vm1-dpe"
}

variable "storage_bucket_roles" {
  type = "list"

  default = [
    "roles/storage.legacyBucketReader",
    "roles/storage.objectAdmin",
  ]
}