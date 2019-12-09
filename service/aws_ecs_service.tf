resource "aws_ecs_service" "shareinfo-service" {
  name            = "shareinfo-service"
  cluster         = aws_ecs_cluster.shareinfo-ecs-cluster.id
  task_definition = aws_ecs_task_definition.shareinfo-task.arn
  desired_count   = 1
  launch_type     = "EC2"
  load_balancer {
    target_group_arn = aws_lb_target_group.http.arn
    container_name   = "shareinfo"
    container_port   = "3000"
  }
}
