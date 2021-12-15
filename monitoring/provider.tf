terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
     
    }
  }
}
provider "google" {
  
#   region = var.region
   project = var.project_id
  
  credentials = "${file("cred.json")}"

}
