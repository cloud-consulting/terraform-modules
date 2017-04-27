resource "aws_alb" "alb" {
  name            = "${var.name}"             
  internal        = "${var.internal}"         
  security_groups = ["${var.security_groups}"]  
  subnets         = ["${var.subnets}"]         
  idle_timeout    = "${var.idle_timeout}"     
  enable_deletion_protection = "${var.enable_deletion_protection}" 

  

  tags {
    Name = "${var.tag_name}"
  }
}