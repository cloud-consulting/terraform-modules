output "alb_arn" {
	value = "${aws_alb.alb.arn}"
}

output "alb_dns_name" {
	value = "${aws_alb.alb.alb_dns_name}"
}

output "alb_canonical_hosted_zone_id" {
	value = "${aws_alb.alb.canonical_hosted_zone_id}"
}

output "alb_zone_id" {
	value = "${aws_alb.alb.alb_zone_id}"
}