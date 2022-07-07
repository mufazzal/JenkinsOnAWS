module "webServerInstanceConfig" {
  source = "../../Modules/EC2ConfigurationResources"

  env = var.env
  namePrefix = var.jic_namePrefix

  vpc_id  = var.vpc_id
//JenkinSlaveCleanAmiId

  amiId = var.useBackedAmi ? module.dataMatrix.gv.JenkinSlaveBackedAmiId : module.dataMatrix.gv.JenkinSlaveCleanAmiId #var.amiId

  sgName = var.jic_sgName
  sg_ingress_rules =  var.sg_ingress_rules
  sg_egress_rules = var.sg_egress_rules

  iamRoleName = var.jic_iamRoleName

  instanceType = var.jic_instanceType
  sshKeyName = var.jic_sshKeyName

  # userDataFilePath = var.jic_userDataFileName
  userDataFilePath = var.useBackedAmi ? "${path.module}/${var.jic_userDataFileNameBacked}" : "${path.module}/${var.jic_userDataFileNameClean}"
  userDataParamMap = {
  }  
  
  update_launch_template_default_version = true
}

module "dataMatrix" {
  source = "../dataMatrixDevops"
}


