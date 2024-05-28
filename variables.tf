variable "aws_region" {
  default = ""
}

variable "service_name" {
  default = ""
  description = "service name"
}

variable "env_name" {
  default = ""
  description = "environment name - for. ex. stage or prod"
}

variable "ecs_role_arn" {
  default = ""
  type = string
}

variable "docker_image_tag" {
  default = ""
  description = "ECR docker image tag using for this service"
}

variable "ecr_repository_url" {
  default = ""
  description = "ecr repository url"
}

variable "cpu_limit" {
  default = "256"
  description = "cpu limit for the task"
}

variable "memory_limit" {
  default = "256"
  description = "memory limit for the task"
}

variable "container_port" {
  default = "8080"
  description = "port expanded by the task"
}

variable "host_port" {
  default = "0"
  description = "port binded outside - 0 means dynamic port assignment"
}

variable "service_protocol" {
  default = "tcp"
}

variable "cloudwatch_log_group" {
  default = "ecs"
}

variable "cloudwatch_multiline_pattern" {
  default = "^20"
}

variable "ssm_variables" {
  default = {}
}

variable "task_variables" {
  default = {
    "FAKE" = "value"
  }
}

variable "environment_files" {
  type = list(object({
    value = string
    type  = string
  }))
  description = "One or more files containing the environment variables to pass to the container. This maps to the --env-file option to docker run. The file must be hosted in Amazon S3. This option is only available to tasks using the EC2 launch type. This is a list of maps"
  default     = null
}

variable "mount_points" {
  default = []
}

variable "efs_volume_name" {
  default = ""
}

variable "efs_file_system_id" {
  default = ""
}

variable "efs_access_point_id" {
  default = ""
}


variable "cluster_id" {
  default = ""
  description = "cluster ID"
}

variable "deploy_max_percent" {
  default = 200
}

variable "deploy_min_percent" {
  default = 100
}

variable "desired_count" {
  default = 0
}

variable "healt_check_grace_period" {
  default = 180
  description = "first healt check after startup"
}

variable "launch_type" {
  default = "EC2"
}

variable "zone_id" {
  default = ""
}

variable "service_dns_name" {
  default = ""
}

variable "lb_dns_name" {
  default = ""
}

variable "lb_zone_id" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "deregistration_delay" {
  default = 60
}

variable "target_group_healthy_threshold" {
  default = 3
}

variable "target_group_unhealthy_threshold" {
  default = 2
}

variable "target_group_health_interval" {
  default = 10
}

variable "target_group_health_matcher" {
  default = "200,302"
}

variable "target_group_health_path" {
  default = "/"
}

variable "target_group_health_port" {
  default = "traffic-port"
}

variable "target_group_health_timeout" {
  default = 5
}

variable "lb_listener_arn" {
  default = ""
}

variable "lb_listener_arn_secondary" {
  default = ""
}

variable "stickiness_cookie_duration" {
  default = 86400
}

variable "stickiness_enabled" {
  default = false
}

variable "stickiness_type" {
  default = "lb_cookie"
}

variable "gitlab_branch" {
  default = "main"
}

variable "deployer_id" {
  default = ""
}

variable "deployer_secret" {
  default = ""
}

variable "cluster_name" {
  default = ""
}

variable "other_service_dns_names" {
  default = []
  type = list(string)
}

variable "other_secondary_service_dns_names" {
  default = []
  type = list(string)
}

variable "task_run_definition_bucket" {
  default = ""
}

variable "task_run_definition_file" {
  default = ""
}

variable "environment_bucket_id" {
  type = string
  description = "environmental s3 bucket ID - using for create gitlab variables template"
}