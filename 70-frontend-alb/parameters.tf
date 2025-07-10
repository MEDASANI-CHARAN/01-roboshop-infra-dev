resource "aws_ssm_parameter" "frontend_alb_listener_https_arn" {
  name  = "/${var.project}/${var.environment}/frontend_alb_listener_https_arn"
  type  = "String"
  value = aws_lb_listener.frontend_alb_https.arn
}