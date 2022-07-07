resource "aws_ecs_task_definition" "taskDefination" {
  family = var.taskFaimilyName
  execution_role_arn = aws_iam_role.iamExecRole.arn
  task_role_arn = aws_iam_role.iamTaskRole.arn
  network_mode = "awsvpc"
  container_definitions = file(var.container_definitions_json)
  //var.container_definitions_json//file(var.)


#   volume {
#     name = "service-storage"

#     efs_volume_configuration {
#       file_system_id          = aws_efs_file_system.fs.id
#       root_directory          = "/opt/data"
#       transit_encryption      = "ENABLED"
#       transit_encryption_port = 2999
#       authorization_config {
#         access_point_id = aws_efs_access_point.test.id
#         iam             = "ENABLED"
#       }
#     }
#   }
}
