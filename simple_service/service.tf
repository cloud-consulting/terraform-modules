resource "aws_ecs_service" "service" {
  name            = "${var.service_name}"
  cluster         = "${var.cluster_name}"
  task_definition = "${var.task_definition}"
  desired_count   = "${var.desired_count}"
  deployment_maximum_percent         = "${var.deployment_maximum_percent}"
  deployment_minimum_healthy_percent = "${var.deployment_minimum_healthy_percent}"
}