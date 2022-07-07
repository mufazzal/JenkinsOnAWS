resource "aws_ecs_cluster" "ECSCluster" {
  name = "${var.namePrefix}-${var.clusterName}"
  capacity_providers = var.capacity_providers  
  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}