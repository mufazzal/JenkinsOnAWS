module "JenkinsSlaveECS" {
  source = "../../Modules/ECS"

  depends_on = [aws_ecs_capacity_provider.ec2_cap_provider]

  vpc_id  = var.vpc_id
  hostingSubnets = var.hostingSubnets

  namePrefix = var.namePrefix
  taskRoleName = var.taskRoleName
  execRoleName = var.execRoleName
  clusterName = module.dataMatrix.gv.name_ecs_cluster_jenkin_slave
  EC2HostedserviceName = var.EC2HostedserviceName
  desired_count = var.desired_count
  ecsContainerSGName = var.ecsContainerSGName
  sg_ingress_rules = var.sg_ingress_rules
  sg_egress_rules = var.sg_egress_rules
  taskFaimilyName = var.taskFaimilyName
  capacity_providers = ["FARGATE", "FARGATE_SPOT", var.ec2_cap_provider_name]
  ecs_ec2_capacityProvider = var.ec2_cap_provider_name
  container_definitions_json = "${path.module}/${var.container_definitions_json_file}"

}

resource "aws_ecs_capacity_provider" "ec2_cap_provider" {
  name = var.ec2_cap_provider_name

  auto_scaling_group_provider {
    auto_scaling_group_arn         = module.dataMatrix.ds.slaveJenkinsInstanceASG.outputs.asg_arn
    managed_termination_protection = "ENABLED"

    managed_scaling {
      maximum_scaling_step_size = 3
      minimum_scaling_step_size = 1
      status                    = "ENABLED"
      target_capacity           = 100
    }
  }
}


module "dataMatrix" {
  source = "../dataMatrixDevops"
  dependencyStacks = ["slaveJenkinsInstanceASG"] //lookup(local.rsts, var.rst) 
}