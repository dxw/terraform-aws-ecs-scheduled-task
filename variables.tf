variable "name" {
  type        = "string"
  description = "Unique name for resources"
}

variable "environment" {
  type        = "string"
  description = "Environment - appended to var.name for resources"
}

variable "network_mode" {
  type        = "string"
  description = "Task network mode"
  default     = "bridge"
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
