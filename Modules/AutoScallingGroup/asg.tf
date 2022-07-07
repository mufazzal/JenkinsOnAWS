resource "aws_autoscaling_group" "autoscallingGroup" {

  name                      = var.asgName

  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  health_check_type         = var.health_check_type
  vpc_zone_identifier       = var.hostingSubnets #["subnet-1235678", "subnet-87654321"]
  target_group_arns         = length(aws_alb_target_group.albTargetGroup) > 0 ? [aws_alb_target_group.albTargetGroup[0].arn] : []

  tag {
    key                 = "Name"
    value               = var.launchedEC2Name
    propagate_at_launch = true
  }
  
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = var.launch_template_id
        version = var.launch_template_version
      }
    }
    instances_distribution {
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 0
      spot_allocation_strategy                 = "capacity-optimized"
    }
  }
}

resource "aws_autoscaling_lifecycle_hook" "launchibg_hook" {
  count = var.userDataScriptSucceedASGHookName != null ? 1 : 0
  name                   = var.userDataScriptSucceedASGHookName
  autoscaling_group_name = aws_autoscaling_group.autoscallingGroup.name
  default_result         = "ABANDON"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_LAUNCHING"

  notification_metadata = jsonencode({ "hello" = "world" })

}
