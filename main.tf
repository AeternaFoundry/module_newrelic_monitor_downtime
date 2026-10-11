resource "newrelic_monitor_downtime" "monitor_downtimes" {
  for_each = var.monitor_downtimes

  end_time         = each.value.end_time
  mode             = each.value.mode
  name             = each.value.name
  start_time       = each.value.start_time
  time_zone        = each.value.time_zone
  account_id       = each.value.account_id
  maintenance_days = each.value.maintenance_days
  monitor_guids    = each.value.monitor_guids

  dynamic "end_repeat" {
    for_each = each.value.end_repeat != null ? [each.value.end_repeat] : []
    content {
      on_date   = end_repeat.value.on_date
      on_repeat = end_repeat.value.on_repeat
    }
  }

  dynamic "frequency" {
    for_each = each.value.frequency != null ? [each.value.frequency] : []
    content {
      days_of_month = frequency.value.days_of_month
      dynamic "days_of_week" {
        for_each = frequency.value.days_of_week != null ? [frequency.value.days_of_week] : []
        content {
          ordinal_day_of_month = days_of_week.value.ordinal_day_of_month
          week_day             = days_of_week.value.week_day
        }
      }
    }
  }
}

