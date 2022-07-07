
resource "aws_alb_target_group" "albTargetGroup" {
  count = var.albTargetGroupName != null ? 1 : 0
  name     = var.albTargetGroupName
  port     = var.exposedEC2WebServerPort
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path = var.ec2WebServerHealthCheckPath
    port = var.exposedEC2WebServerPort
  }
}
