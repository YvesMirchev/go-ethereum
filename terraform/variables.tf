variable "config" {
  description = "Map of basic config values."
  type        = any
}

variable "SSH_PUBLIC_KEY" {
  description = "Public SSH key for EC2 access"
  type        = string
  sensitive   = true
}

variable "DB_USERNAME" {
  description = "Database username, stored securely in GitHub Repository secrets"
  type        = string
}

variable "DB_PASSWORD" {
  description = "Database password, stored securely in GitHub Repository secrets"
  type        = string
  sensitive   = true
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

variable "ADMIN_USER" {
  description = "WordPress admin username"
  type        = string
}

variable "ADMIN_PASS" {
  description = "WordPress admin password"
  type        = string
  sensitive   = true
}

variable "ADMIN_EMAIL" {
  description = "WordPress admin email address"
  type        = string
}
