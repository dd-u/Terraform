resource "aws_lb_target_group_attachment" "my-attachment" {
  target_group_arn = "${aws_lb_target_group.my-tg.arn}"
  target_id        = "${var.instance_id}"
 }
