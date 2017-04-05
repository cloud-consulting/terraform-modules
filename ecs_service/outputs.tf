output "ecs_service_arn" {
	value = "${aws_ecs_service.service.arn}"
}

output "ecs_service_name" {
	value = "${aws_ecs_service.service.name}"
}

output "ecs_service_cluster" {
	value = "${aws_ecs_service.service.cluster}"
}

output "ecs_service_iam_role" {
	value = "${aws_ecs_service.service.iam_role}"
}

output "ecs_service_iam_desired_count" {
	value = "${aws_ecs_service.service.desired_count}"
}