variable "network_load_balancer_listeners_lookup" {
  description = <<EOT
Map of network_load_balancer_listeners_lookup, attributes below
Required:
    - network_load_balancer_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    network_load_balancer_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

