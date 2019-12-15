resource "aws_ecs_task_definition" "shareinfo-task" {
  family                = "shareinfo-service"
  container_definitions = file("./container_definitions/service.json.tpl")

  task_role_arn      = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  execution_role_arn = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode       = "bridge"
}

resource "aws_ecs_task_definition" "rails-migrate" {
  family                = "rails-migrate"
  container_definitions = file("./container_definitions/migration.json.tpl")

  execution_role_arn = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode       = "bridge"
}
