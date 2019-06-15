# Terraform

## Install

```bash
mkdir -p $HOME/bin
cd $HOME/bin
wget https://releases.hashicorp.com/terraform/0.11.9/terraform_0.11.9_linux_amd64.zip
unzip terraform_0.11.9_linux_amd64.zip
export PATH="$PATH:$HOME/bin"
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc
cd $HOME
```

## Authenticate

Note: If using Cloud Shell, there is no need to authenticate


```bash
# Run this on your local machine to authenticated your account to GCP.
# Terraform will pick it up automatically

gcloud auth application-default login
```

Reference: https://www.terraform.io/docs/providers/google/provider_reference.html

## Challenge

Create a VM and a storage bucket and access the bucket from the VM. It could be as simple as writing a text file to that bucket.



[install gsutil to interact with the bucket (link)](https://cloud.google.com/storage/docs/gsutil_install#deb)


