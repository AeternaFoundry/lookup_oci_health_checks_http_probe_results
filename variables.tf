variable "health_checks_http_probe_results_lookup" {
  description = <<EOT
Map of health_checks_http_probe_results_lookup, attributes below
Required:
    - probe_configuration_id
Optional:
    - start_time_greater_than_or_equal_to
    - start_time_less_than_or_equal_to
    - target
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    probe_configuration_id              = string
    start_time_greater_than_or_equal_to = optional(number)
    start_time_less_than_or_equal_to    = optional(number)
    target                              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

