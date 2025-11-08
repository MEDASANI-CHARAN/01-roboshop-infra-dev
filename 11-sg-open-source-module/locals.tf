locals {
  common_name_suffix = "${var.project_name}-${var.environment}" # roboshop-dev
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
  sg_tags = {
    Name = "${local.common_name_suffix}-catalogue"
  }
}