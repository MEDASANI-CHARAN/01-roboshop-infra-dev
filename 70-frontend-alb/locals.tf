locals {
  frontend-alb_sg_id = data.aws_ssm_parameter.frontend-alb_sg_id.value
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = "true"
  }
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  public_subnet_ids = split(",", data.aws_ssm_parameter.public_subnet_ids.value)
  acm_certificate_arn = data.aws_ssm_parameter.acm_certificate_arn.value
}