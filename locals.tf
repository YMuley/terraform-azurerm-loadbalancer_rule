locals {
  lb_rule ={for lb_rule in var.lb_rule_list:lb_rule.name => lb_rule}
}