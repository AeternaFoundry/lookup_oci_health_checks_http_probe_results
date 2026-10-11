data "oci_health_checks_http_probe_results" "health_checks_http_probe_results_lookup" {
  for_each = var.health_checks_http_probe_results_lookup

  probe_configuration_id              = each.value.probe_configuration_id
  start_time_greater_than_or_equal_to = each.value.start_time_greater_than_or_equal_to
  start_time_less_than_or_equal_to    = each.value.start_time_less_than_or_equal_to
  target                              = each.value.target

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

