variable "name" {}

variable "cluster_name" {}

variable "task_definition" {}

variable "desired_count" {}

variable "iam_role" {}

variable "target_group_arn" {}

variable "container_name" {}

variable "container_port" {}

variable "deployment_maximum_percent" {
	default = "200"
}

variable "deployment_minimum_healthy_percent" {
	default = "100"
}