variable "org_id" {
}

variable "billing_id" {
}

variable "region" {
  default = "europe-west1"
}

variable "email_owner" {
  default = "trainer@gmail.com"
}

variable "trainees" {
  type = list(string)

  default = [
    "trainee1@gmail.com",
    "trainee2@gmail.com",
    "trainee3@gmail.com",
  ]
}

variable "services" {
  type = list(string)
}

