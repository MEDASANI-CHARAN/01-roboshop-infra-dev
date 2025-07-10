module "component" {
    # source = "../../03-terraform-aws-roboshop"
    source = "git::https://github.com/MEDASANI-CHARAN/03-terraform-aws-roboshop.git?ref=main"
    for_each = tomap(var.components)
    project = var.project
    environment = var.environment
    zone_id = var.zone_id
    zone_name = var.zone_name
    component = each.key
    rule_priority = each.value.rule_priority
}