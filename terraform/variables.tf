variable "config" {
  description = "Map of basic config values."
  type        = any
}

variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key ID for Terraform authentication"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key for Terraform authentication"
  type        = string
  sensitive   = true
}
