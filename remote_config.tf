terraform {  
  backend "gcs" {
    bucket  = "terraform-remote-states"
    path    = "dev/terraform.tfstate"
    project = "sahas-codelab"
  }
}