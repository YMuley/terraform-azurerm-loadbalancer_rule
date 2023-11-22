resource "azurerm_lb_rule" "lb_rule" {
  for_each = local.lb_rule
  name  = each.value.name
  loadbalancer_id = var.load_balancer_output[each.value.load_balancer_name].id
  protocol = each.value.protocol
  frontend_port = each.value.frontend_port
  backend_port = each.value.backend_port
  frontend_ip_configuration_name = each.value.frontend_ip_configuration_name
  probe_id = each.value.health_probe_id
  enable_floating_ip = each.value.enable_floating_ip
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  load_distribution = each.value.load_distribution
  disable_outbound_snat = each.value.disable_outbound_snat
  enable_tcp_reset = each.value.enable_tcp_reset
  backend_address_pool_ids = [for pool_ids in each.value.backend_address_pool_ids : var.lb_backend_address_pool_output[pools_ids].id]
} 