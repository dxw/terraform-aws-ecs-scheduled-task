variable "name" {
  description = "Unique name for resources"
}

variable "environment" {
  description = "Environment - appended to var.name for resources"
}

variable "network_mode" {
  description = "Task network mode"
  default     = "bridge"
}

variable "container_definitions" {
  description = "Task container defintions"
}

variable "schedule_expression" {
  description = "Schedule expression (cron) for when to run task"
}

variable "cluster_arn" {
  description = "ARN of cluster on which to run task"
}

variable "task_count" {
  description = "Number of tasks to run"
  default     = 1
}

variable "cpu" {
  description = "The number of cpu units used by the task"
}

variable "memory" {
  description = "The amount (in MiB) of memory used by the task"
}
