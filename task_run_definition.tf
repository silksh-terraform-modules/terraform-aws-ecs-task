resource "aws_s3_object" "task_run_definition" {
  bucket  = var.task_run_definition_bucket
  key     = var.task_run_definition_file
  content = <<EOF
{
    "cluster": "${var.cluster_id}",
    "taskDefinition": "${aws_ecs_task_definition.this.arn}",
    "startedBy": "deployment-script",
    "group": "${var.service_name}-${var.env_name}",
    "launchType": "EC2"
}
EOF
}
