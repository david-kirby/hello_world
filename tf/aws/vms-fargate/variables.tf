
variable "workspaces" {
  default = {
    dev  = "arn:aws:iam::621582994717:role/video-devops"
    qa   = "arn:aws:iam::730612324875:role/video-devops"
    prod = "arn:aws:iam::378170005943:role/video-devops"
  }
}

variable "aws_region" {
  default = "us-east-1"
}


