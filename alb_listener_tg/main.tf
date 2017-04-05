resource "aws_alb_target_group" "target_group" {
  name      = "${var.name}"
  port      = "${var.port}"
  protocol  = "${var.protocol}"
  vpc_id    = "${var.vpc_id}"

  health_check {
    timeout             = "${var.timeout}"
    interval            = "${var.interval}"
    unhealthy_threshold = "${var.unhealthy_threshold}"
    healthy_threshold   = "${var.healthy_threshold}"
    protocol            = "${var.protocol}"
    path                = "${var.health_check}"
  }
}

resource "aws_alb_listener" "listener" {
   load_balancer_arn = "${var.alb_arn}"
   port = "${var.port}"
   protocol = "${var.protocol}"

   default_action {
     target_group_arn = "${aws_alb_target_group.target_group.id}"
     type = "forward"
   }
}