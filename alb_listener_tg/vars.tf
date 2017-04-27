variable "name" {}

variable "port" {}

variable "vpc_id" {}

variable "timeout" {
  default = 20
}

variable "interval" {
  default = 22
}

variable "unhealthy_threshold" {
  default = 5
}

variable "healthy_threshold" {
  default = 2
}

variable "protocol" {
  default = "HTTP"
}

variable "health_check" {}

variable "alb_arn" {}

variable "matcher" {
	default = "200-299"
}

variable "deregistration_delay" {
	default = "300"
}