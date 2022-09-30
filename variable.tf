variable "region" {
  description = "region of that resource"
  type        = string
}
variable "repository_name" {
  description = "Name of the repository"
  type        = string
}

variable "architectures" {
  description = "The system architecture that the images in the repository are compatible with"
  type        = list(string)
}
variable "description" {
  description = "A short description of the contents of the repository"
  type        = string
}
variable "logo_image_blob" {
  description = "The base64-encoded repository logo payload"
  type        = string
}
variable "operating_systems" {
  description = "The operating systems that the images in the repository are compatible with"
  type        = list(string)
}
variable "usage_text" {
  description = "Detailed information on how to use the contents of the repository"
  type        = string
}
variable "env" {
  description = "A short description of the contents of the repository"
  type        = string
}