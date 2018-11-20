# Terraform AWS ECS Scheduled Task

A Terraform module to create a scheduled task in AWS ECS

## Usage

``` hcl
module "scheduled_task" {
  source  = "github.com:dxw/terraform-aws-ecs-scheduled-task"
  version = "1.2"

  name                  = "my_awesome_task"
  environment           = "staging"
  container_definitions = "${file(./path/to/container-definitions.json)}"
  schedule_expression   = "cron(0 * * * ? 0)"
  cluster_arn           = "my_awesome_cluster"
  memory                = "512"
  cpu                   = "512"
}
```

## Configuration

The following variables can be configured:

### Required

#### `name`

- **Description**: Unique name for resources
- **Default**: `none`

#### `environment`

- **Description**: Environment - appended to ${var.name} for resources
- **Default**: `none`

#### `container_definitions`

- **Description**: Task container defintions. See [AWS docs][container_definition_docs]
- **Default**: `none`

#### `schedule_expression`

- **Description**: Schedule expression ( `cron()` or `rate()`)  for when to run task. See [AWS docs][schedule_expression_docs]
- **Default**: `none`

#### `cluster_arn`

- **Description**: ARN of cluster on which to run task
- **Default**: `none`

#### `cpu`

- **Description**: The number of cpu units used by the task
- **Default**: `none`

#### `memory`

- **Description**: The amount (in MiB) of memory used by the task
- **Default**: `none`

### Optional

#### `network_mode`

- **Description**: Task network mode
- **Default**: `bridge`

### Outputs

The following outputs are exported:

#### `scheduled_task_ecs_execution_role_id`

- **Description**: Scheduled Task ECS Role ID

#### `scheduled_task_ecs_role_id`

- **Description**: Scheduled Task ECS Role ID

#### `scheduled_task_cloudwatch_role_id`

- **Description**: Scheduled Task CloudWatch Role ID

#### `scheduled_task_arn`

- **Description**: Scheduled Task ARN

[container_definition_docs]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html
[schedule_expression_docs]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
