resource "aws_elb" "load_balancer" {
  name            = "${var.Name}"
  subnets         = ["${var.Subnet}"]
  security_groups = ["${var.Secgroup}"]

  internal = false

  cross_zone_load_balancing = true

  connection_draining         = false
  connection_draining_timeout = 300

  idle_timeout = 60

  listener {
    instance_port     = "${var.Instanceport}"
    instance_protocol = "${var.Instanceprotocol}"
    lb_port           = "${var.Lbport}"
    lb_protocol       = "${var.Lbprotocol}"
    #ssl_certificate_id = listener.value.ssl_certificate_id
  }

  health_check {
    #protocol            = "${var.healthcheckprotocol}"
    #path                = "${var.healthcheckpath}"
    target              = "TCP:80"
    timeout             = 5
    interval            = 30
    unhealthy_threshold = 2
    healthy_threshold   = 10
  }

  tags = {
    Name                 = "${var.Name}"
	Farm                 = "${var.Farm}"
  }
  #vpc_id            = "${var.vpc_cidr}"
  #instance_id        = "${var.Instanceid}" 
}
resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr}"
}
