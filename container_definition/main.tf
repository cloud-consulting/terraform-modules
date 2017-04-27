data "template_file" "template" {
  template = "${file("${path.module}/container_definition.json")}"

  vars {
    container_name       = "${var.container_name}"
    cluster_name         = "${var.cluster_name}"
    docker_image         = "${var.docker_image}"
    memory_units         = "${var.memory_units}"
    memory_reservation   = "${var.memory_reservation}"
    volume_container_path= "${var.volume_container_path}"
    container_port       = "${var.container_port}"
    host_port            = "${var.host_port}"
    protocol             = "${var.protocol}"
    log_driver           = "${var.log_driver}"
    aws_region           = "${var.aws_region}"
    awslogs_group_name   = "${var.awslogs_group_name}"
  }
}

resource "aws_ecs_task_definition" "task_definition" {
  family                = "${var.container_name}-${var.cluster_name}"
  container_definitions = "${data.template_file.template.rendered}"

  volume {
    name      = "${var.container_name}-config"
    host_path = "${var.volume_host_path}"
  }
}
