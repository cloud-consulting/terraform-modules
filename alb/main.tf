resource "aws_alb" "alb" {
  name            = "${var.name}"             # String
  internal        = "${var.internal}"         # Boolean
  security_groups = ["${var.security_groups}"]  # Array
  subnets         = ["${var.subnets}" ]         # Aray
  idle_timeout    = "${var.idle_timeout}"     # Integer
  enable_deletion_protection = "${var.enable_deletion_protection}" # Boolean

  

  tags {
    Name = "${var.tag_name}"
  }
}