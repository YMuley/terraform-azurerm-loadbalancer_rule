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

variable "lb_backend_address_pool_output" {
  type = map(any)
  default = {}
}

variable "lb_health_probe_output" {
  type = map(any)
  default = {}
}