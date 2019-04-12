variable "name" {
  type        = "string"
  description = "Unique name for resources"
}

variable "environment" {
  type        = "string"
  description = "Environment - appended to ${var.name} for resources"
}

variable "container_definitions" {
  type        = "string"
  description = "Task container defintions"
}

variable "schedule_expression" {
  type        = "string"
  description = "Schedule expression (cron) for when to run task"
}

variable "cluster_arn" {
  type        = "string"
  description = "ARN of cluster on which to run task"
}

variable "task_count" {
  type        = "string"
  description = "Number of tasks to run"
  default     = 1
}

variable "cpu" {
  type        = "string"
  description = "The number of cpu units used by the task"
}

variable "memory" {
  type        = "string"
  description = "The amount (in MiB) of memory used by the task"
}

variable "network_mode" {
  type        = "string"
  description = "Task network mode"
  default     = "bridge"
}

variable "launch_type" {
  description = "Launch type on which your task is running. Valid values are EC2 or FARGATE."
  default     = "EC2"
}

variable "subnets" {
  description = "List of subnets if network_mode is `awsvpc`"
  default     = []
}

variable "security_groups" {
  description = "List of security groups if network_mode is `awsvpc`"
  default     = []
}

variable "assign_public_ip" {
  description = "Assign a public IP to the ENI (Fargate launch type only)"
  default     = false
}
