variable "project" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "zone_id" {
  default = "Z07866282L1GWKFW4V5TH"
}

variable "zone_name" {
  default = "daws2025.online"
}

variable "components" {
  default = {

    catalogue = {
      rule_priority = 10
    }

     user = {
      rule_priority = 20
    }

    cart = {
      # project = "roboshop"
      # environment = "dev"
      # zone_id = "Z07866282L1GWKFW4V5TH"
      # component = "cart"
      # zone_name = "daws2025.online"
      rule_priority = 30
    }

    shipping = {
      rule_priority = 40
    }

     payment = {
      rule_priority = 50
    }

    frontend = {
      rule_priority = 60
    }
  }
}

variable "rule_priority" {
  default = "20"
}