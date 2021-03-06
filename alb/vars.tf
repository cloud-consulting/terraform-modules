variable "name" {
	type = "string"
}

variable "internal" {
	type = "string"
}

variable "security_groups" {
	type = "list"
}

variable "subnets" {
	type = "list"
}

variable "idle_timeout" {
	type = "string"
}

variable "enable_deletion_protection" {
	type = "string"
}

variable "tag_name" {
	type = "string"
}