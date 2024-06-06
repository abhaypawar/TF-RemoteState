variable "project_id" {
  description = "Your GCP project ID"
}

variable "region" {
  description = "The region where resources will be created"
}

variable "zone" {
  description = "The zone within the region for the instance"
}

variable "server_name" {
  description = "The name for your web server instance"
}

variable "machine_type" {
  description = "The machine type for your web server instance (e.g., e2-micro)"
}
