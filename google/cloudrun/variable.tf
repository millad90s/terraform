variable project-id {
  type        = string
  default     = "milad-gcp-01"
  description = "project id "
}

variable location {
  type        = string
  default     = "europe-west1"
  description = "location"
}

variable service-name {
  type        = string
  default     = "my-service2"
  description = "service name"
}

variable image {
  type        = string
  default     = "gcr.io/cloudrun/hello"
  description = "image"
}