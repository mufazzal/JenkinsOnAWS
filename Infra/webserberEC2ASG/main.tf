module "webServerEC2ASG" {
  source = "../../Modules/AutoScallingGroup"

  asgName                   = var.ASGEC2Name #var.asgName

  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  health_check_type         = "EC2"
  hostingSubnets            = var.subnets #var.hostingSubnets
  launch_template_id        = module.dataMatrix.ds.JenkinSlaveInstanceConfig.outputs.launchTemplate_id #var.launch_template_id
  launch_template_version   = "$Default" #module.dataMatrix.ds.webServerInstanceConfig.outputs.launchTemplate_latest_version
  launchedEC2Name = "Jenkins-Slave"
}

module "dataMatrix" {
  source = "../dataMatrixDevops"
  dependencyStacks = ["JenkinSlaveInstanceConfig"] //lookup(local.rsts, var.rst) 
}