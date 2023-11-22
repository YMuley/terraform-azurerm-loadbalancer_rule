variable "lb_rule_list" {
  type = list(any)
  default = []
  description = "list of lb rules tobe deployed"
}

variable "load_balancer_output" {
  type = map(any)
  default = {}
  description = "object output of loadbancer module"
}

variable "lb_backend_adddresses_output" {
  type = map(any)
  default = {}
}