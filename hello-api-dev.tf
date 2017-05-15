variable "name" {
    type="string"
}
variable "scopes" {
    type="list"
}
variable "tags" {
    type="list"
}

provider "google" {
    credentials="${file("key/sahas-codelab.json")}"
    project ="sahas-codelab"
    region ="us-central-1"
    }
resource "google_compute_instance" "default" {
  name         = "${var.name}"
  machine_type ="n1-standard-1"
  zone         ="us-central1-a"

  tags ="${var.tags}"

  disk{
    image ="debian-cloud/debian-8"
        }

  disk{
    type    ="local-ssd"
    scratch =true
        }

  network_interface{
    network ="default"
        }

  service_account{
    scopes = "${var.scopes}"
        }
    }