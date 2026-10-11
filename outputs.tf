output "monitor_downtimes_id" {
  description = "Map of id values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no id are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_downtimes_account_id" {
  description = "Map of account_id values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no account_id are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.account_id if v.account_id != null }
}
output "monitor_downtimes_end_repeat" {
  description = "Map of end_repeat values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no end_repeat are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => one(v.end_repeat) if v.end_repeat != null && length(v.end_repeat) > 0 }
}
output "monitor_downtimes_end_time" {
  description = "Map of end_time values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no end_time are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "monitor_downtimes_frequency" {
  description = "Map of frequency values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no frequency are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => one(v.frequency) if v.frequency != null && length(v.frequency) > 0 }
}
output "monitor_downtimes_maintenance_days" {
  description = "Map of maintenance_days values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no maintenance_days are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.maintenance_days if v.maintenance_days != null && length(v.maintenance_days) > 0 }
}
output "monitor_downtimes_mode" {
  description = "Map of mode values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no mode are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "monitor_downtimes_monitor_guids" {
  description = "Map of monitor_guids values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no monitor_guids are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.monitor_guids if v.monitor_guids != null && length(v.monitor_guids) > 0 }
}
output "monitor_downtimes_name" {
  description = "Map of name values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no name are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_downtimes_start_time" {
  description = "Map of start_time values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no start_time are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "monitor_downtimes_time_zone" {
  description = "Map of time_zone values across all monitor_downtimes, keyed the same as var.monitor_downtimes except keys with no time_zone are omitted"
  value       = { for k, v in newrelic_monitor_downtime.monitor_downtimes : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

