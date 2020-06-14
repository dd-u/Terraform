resource "aws_elb" "myelb" {
  name               = "${var.Name}"

  listener {
    instance_port     = "${var.Instanceport}"
    instance_protocol = "${var.Instanceprotocol}"
    lb_port           = "${var.Lbport}"
    lb_protocol       = "${var.Lbprotocol}"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8080/" #"TCP:80"
    interval            = 30
  }

  instances                   = ["${var.Instance}"]
  subnets                     = ["${var.Subnets}"]
  security_groups             = ["${var.Secgroup}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = false
  connection_draining_timeout = 400

  tags = {
    Name = "${var.Environment}"
  }
}
