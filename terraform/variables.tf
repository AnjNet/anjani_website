variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "domain_name" {
  description = "Domain name to use for the bucket"
  type        = string
  default     = "anjaniportfolio.com"
}
