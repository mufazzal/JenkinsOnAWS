resource "aws_ecs_service" "ecsService" {
  name            = "${var.namePrefix}-${var.EC2HostedserviceName}"
  cluster         = aws_ecs_cluster.ECSCluster.id
  task_definition = aws_ecs_task_definition.taskDefination.arn
  desired_count   = var.desired_count
  
  enable_execute_command = true
  enable_ecs_managed_tags = true

  capacity_provider_strategy {
      base = 0
      capacity_provider = var.ecs_ec2_capacityProvider
      weight = 1000
  }

  ordered_placement_strategy {
    type  = "binpack"
    field = "memory"
  }

  network_configuration {
      subnets = var.hostingSubnets
      security_groups = [aws_security_group.ecsContainerSG.id]
  }

#   iam_role        = aws_iam_role.foo.arn
#   depends_on      = [aws_iam_role_policy.foo]



#   load_balancer {
#     target_group_arn = aws_lb_target_group.foo.arn
#     container_name   = "mongo"
#     container_port   = 8080
#   }

#   placement_constraints {
#     type       = "memberOf"
#     expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
#   }
}
