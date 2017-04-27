variable "cluster_name" {}

variable "docker_image" {}

variable "memory_units" {}

variable "memory_reservation" {}

variable "container_name" {}

variable "aws_region" {}

variable "container_port" {}

variable "protocol" {
	default = "tcp"
}

variable "log_driver" {
	default = "awslogs"
}

variable "host_port" {}

variable "volume_container_path" {}

variable "volume_host_path" {}