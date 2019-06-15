variable "project_id" {
    default = "ID OF PROJECT"
}

variable "bucket_name" {
  default = "my_bucket"
}

variable "vm_name" {
  default = "my_vm"
}

#variable "storage_bucket_roles" {
#  type = "list"
#
#  default = [
#    "roles/storage.legacyBucketReader",
#    "roles/storage.objectAdmin",
#  ]
#}