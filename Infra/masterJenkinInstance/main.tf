module "webServerInstanceConfig" {
  source = "../../Modules/EC2ConfigurationResources"

  env = var.env
  namePrefix = var.jic_namePrefix

  vpc_id  = var.vpc_id

  amiId = module.dataMatrix.gv.JenkinMasterAmiId #var.amiId

  sgName = var.jic_sgName
  sg_ingress_rules =  var.sg_ingress_rules
  sg_egress_rules = var.sg_egress_rules

  iamRoleName = var.jic_iamRoleName

  instanceType = var.jic_instanceType
  sshKeyName = var.jic_sshKeyName

  userDataFilePath = var.jic_userDataFileName
  
  update_launch_template_default_version = true
}

module "dataMatrix" {
  source = "../dataMatrixDevops"
}


