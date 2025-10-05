variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "acl" {
  description = "Controle de acesso do bucket"
  type        = string
  default     = "private"
}

variable "environment" {
  description = "Ambiente do bucket (dev, hom, prod)"
  type        = string
}
