### create cloud run 

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
