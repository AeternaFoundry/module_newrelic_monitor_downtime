variable "monitor_downtimes" {
  description = <<EOT
Map of monitor_downtimes, attributes below
Required:
    - end_time
    - mode
    - name
    - start_time
    - time_zone
Optional:
    - account_id
    - maintenance_days
    - monitor_guids
    - end_repeat (block):
        - on_date (optional)
        - on_repeat (optional)
    - frequency (block):
        - days_of_month (optional)
        - days_of_week (optional, block):
            - ordinal_day_of_month (required)
            - week_day (required)
EOT

  type = map(object({
    end_time         = string
    mode             = string
    name             = string
    start_time       = string
    time_zone        = string
    account_id       = optional(number)
    maintenance_days = optional(set(string))
    monitor_guids    = optional(set(string))
    end_repeat = optional(object({
      on_date   = optional(string)
      on_repeat = optional(number)
    }))
    frequency = optional(object({
      days_of_month = optional(set(number))
      days_of_week = optional(object({
        ordinal_day_of_month = string
        week_day             = string
      }))
    }))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

