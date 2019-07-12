# CREATE WORKSHOP SETUP


Each trainee will have his/her own GCP project with one small VM running in it.

It reduces the risk of breaking something.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| billing\_id |  | string | n/a | yes |
| email\_owner |  | string | `"trainer@gmail.com"` | no |
| org\_id |  | string | n/a | yes |
| project\_id |  | string | n/a | yes |
| region |  | string | `"europe-west1"` | no |
| services |  | list(string) | n/a | yes |
| trainees |  | list(string) | `[ "trainee1@gmail.com", "trainee2@gmail.com", "trainee3@gmail.com" ]` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

