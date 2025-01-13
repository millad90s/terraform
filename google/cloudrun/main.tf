### create cloud run 
terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}

provider "google" {
    project = var.project-id
    region = var.location
}

module "cloudrun" {
    source  = "GoogleCloudPlatform/cloud-run/google"
    project_id = var.project-id
    location = var.location

    image = "gcr.io/cloudrun/hello"
    service_name = var.service-name

    members = [
        "allUsers"
    ]

    limits = {
        cpu    = "1"
        memory = "128Mi"
    }

}
