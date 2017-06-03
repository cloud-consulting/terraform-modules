variable "service_name" {}

variable "cluster_name" {}

variable "task_definition" {}

variable "desired_count" {}

variable "deployment_maximum_percent" {
	default = "200"
}

variable "deployment_minimum_healthy_percent" {
	default = "100"
}