resource "aws_instance" "Jenkin_Master" {

    launch_template {
        id = module.dataMatrix.ds.JenkinMasterInstanceConfig.outputs.launchTemplate_id
        version = "$Default"
    }

    subnet_id = var.subnet_id
}


module "dataMatrix" {
  source = "../dataMatrixDevops"
  dependencyStacks = ["JenkinMasterInstanceConfig"] 
}


