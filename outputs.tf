output "network_load_balancer_listeners_lookup_id" {
  description = "Map of id values across all network_load_balancer_listeners_lookup, keyed the same as var.network_load_balancer_listeners_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_listeners.network_load_balancer_listeners_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_load_balancer_listeners_lookup_filter" {
  description = "Map of filter values across all network_load_balancer_listeners_lookup, keyed the same as var.network_load_balancer_listeners_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_network_load_balancer_listeners.network_load_balancer_listeners_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "network_load_balancer_listeners_lookup_listener_collection" {
  description = "Map of listener_collection values across all network_load_balancer_listeners_lookup, keyed the same as var.network_load_balancer_listeners_lookup except keys with no listener_collection are omitted"
  value       = { for k, v in data.oci_network_load_balancer_listeners.network_load_balancer_listeners_lookup : k => v.listener_collection if v.listener_collection != null && length(v.listener_collection) > 0 }
}
output "network_load_balancer_listeners_lookup_network_load_balancer_id" {
  description = "Map of network_load_balancer_id values across all network_load_balancer_listeners_lookup, keyed the same as var.network_load_balancer_listeners_lookup except keys with no network_load_balancer_id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_listeners.network_load_balancer_listeners_lookup : k => v.network_load_balancer_id if v.network_load_balancer_id != null && length(v.network_load_balancer_id) > 0 }
}

