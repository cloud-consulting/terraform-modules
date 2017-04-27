resource "aws_ecs_service" "service" {
  name            = "${var.name}"
  cluster         = "${var.cluster_name}"
  task_definition = "${var.task_definition}"
  desired_count   = "${var.desired_count}"
  iam_role        = "${var.iam_role}"
  deployment_maximum_percent         = "${var.deployment_maximum_percent}"
  deployment_minimum_healthy_percent = "${var.deployment_minimum_healthy_percent}"

  load_balancer {
    target_group_arn       = "${var.target_group_arn}"
    container_name         = "${var.container_name}"
    container_port         = "${var.container_port}"
  }
}