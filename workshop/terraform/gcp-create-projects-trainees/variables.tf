variable "org_id" {}

variable "billing_id" {}

variable "region" {
  default = "europe-west1"
}
variable "project" {
#   default = "default-project-160900"
}

variable "email_owner" {
    default = "trainer@gmail.com"
}


variable "trainees" {
  type = "list"
  default = [
    "trainee1@gmail.com",
    "trainee2@gmail.com",
    "trainee3@gmail.com",
  ]
}

variable "services" {
  type = "list"
  default = [
    "containerregistry.googleapis.com",
    "pubsub.googleapis.com",
    "deploymentmanager.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "compute-component.googleapis.com",
    "container.googleapis.com",
    "storage-api.googleapis.com",
  ]
}
