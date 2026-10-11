output "health_checks_http_probe_results_lookup_id" {
  description = "Map of id values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "health_checks_http_probe_results_lookup_filter" {
  description = "Map of filter values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "health_checks_http_probe_results_lookup_http_probe_results" {
  description = "Map of http_probe_results values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no http_probe_results are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.http_probe_results if v.http_probe_results != null && length(v.http_probe_results) > 0 }
}
output "health_checks_http_probe_results_lookup_probe_configuration_id" {
  description = "Map of probe_configuration_id values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no probe_configuration_id are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.probe_configuration_id if v.probe_configuration_id != null && length(v.probe_configuration_id) > 0 }
}
output "health_checks_http_probe_results_lookup_start_time_greater_than_or_equal_to" {
  description = "Map of start_time_greater_than_or_equal_to values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no start_time_greater_than_or_equal_to are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.start_time_greater_than_or_equal_to if v.start_time_greater_than_or_equal_to != null }
}
output "health_checks_http_probe_results_lookup_start_time_less_than_or_equal_to" {
  description = "Map of start_time_less_than_or_equal_to values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no start_time_less_than_or_equal_to are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.start_time_less_than_or_equal_to if v.start_time_less_than_or_equal_to != null }
}
output "health_checks_http_probe_results_lookup_target" {
  description = "Map of target values across all health_checks_http_probe_results_lookup, keyed the same as var.health_checks_http_probe_results_lookup except keys with no target are omitted"
  value       = { for k, v in data.oci_health_checks_http_probe_results.health_checks_http_probe_results_lookup : k => v.target if v.target != null && length(v.target) > 0 }
}

