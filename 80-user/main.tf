module "user" {
    source = "../../03-terraform-aws-roboshop"
    project = var.project
    environment = var.environment
    zone_id = var.zone_id
    zone_name = var.zone_name
    component = var.component
    rule_priority = var.rule_priority
}