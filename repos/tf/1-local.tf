variable "env" {
  description = "The environment to deploy (staging or production)"
  type        = string
}

locals {
  env         = var.env
  region      = "eu-north-1"
  zone1       = "eu-north-1a"
  zone2       = "eu-north-1b"
  eks_name    = "cloud-design"
  eks_version = "1.30"
}
