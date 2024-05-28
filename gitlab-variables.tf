# tworzenie pliku ze zmiennymi deploymentu do projektu w gitlabie
resource "local_file" "this-gitlab-environment" {
    content  = templatefile("${path.module}/templates/gitlab/project_variables.json", {
      env_scope                 = var.gitlab_branch
      access_key                = var.deployer_id
      secret_key                = var.deployer_secret
      docker_registry           = var.ecr_repository_url
      task_tag                  = var.docker_image_tag
      app_domain_name           = var.service_dns_name
      aws_region                = var.aws_region
      # env_variable_s3_bucket    = aws_s3_bucket.env_variables.id
      ecs_cluster_name          = var.cluster_name
      task_run_definition_bucket = var.task_run_definition_bucket
      task_run_definition_file = var.task_run_definition_file
      env_variable_s3_bucket    = var.environment_bucket_id

    })
    filename = "./.terraform/${var.service_name}-${var.env_name}-gitlab-variables.json"
}