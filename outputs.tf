output "monitor_downtimes_id" {
  description = "Map of id values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.id }
}
output "monitor_downtimes_account_id" {
  description = "Map of account_id values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.account_id }
}
output "monitor_downtimes_end_repeat" {
  description = "Map of end_repeat values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => one(v.end_repeat) }
}
output "monitor_downtimes_end_time" {
  description = "Map of end_time values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.end_time }
}
output "monitor_downtimes_frequency" {
  description = "Map of frequency values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => one(v.frequency) }
}
output "monitor_downtimes_maintenance_days" {
  description = "Map of maintenance_days values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.maintenance_days }
}
output "monitor_downtimes_mode" {
  description = "Map of mode values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.mode }
}
output "monitor_downtimes_monitor_guids" {
  description = "Map of monitor_guids values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.monitor_guids }
}
output "monitor_downtimes_name" {
  description = "Map of name values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.name }
}
output "monitor_downtimes_start_time" {
  description = "Map of start_time values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.start_time }
}
output "monitor_downtimes_time_zone" {
  description = "Map of time_zone values across all monitor_downtimes, keyed the same as var.monitor_downtimes"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.time_zone }
}

