resource "aws_lb_target_group" "http" {
  name     = "shareinfo-http"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = data.terraform_remote_state.vpc.outputs.vpc_id

  health_check {
    interval            = 30
    path                = "/health_check"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 20
    healthy_threshold   = 6
    unhealthy_threshold = 4
  }
}
