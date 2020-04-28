output "scheduled_task_ecs_execution_role_id" {
  value = aws_iam_role.scheduled_task_ecs_execution.id
}

output "scheduled_task_ecs_role_id" {
  value = aws_iam_role.scheduled_task_ecs.id
}

output "scheduled_task_cloudwatch_role_id" {
  value = aws_iam_role.scheduled_task_cloudwatch.id
}

output "scheduled_task_arn" {
  value = aws_ecs_task_definition.scheduled_task.arn
}
