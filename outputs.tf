output "subscription_schedules_id" {
  description = "Map of id values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no id are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscription_schedules_application" {
  description = "Map of application values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no application are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.application if v.application != null && length(v.application) > 0 }
}
output "subscription_schedules_billing_mode" {
  description = "Map of billing_mode values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no billing_mode are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.billing_mode if v.billing_mode != null && length(v.billing_mode) > 0 }
}
output "subscription_schedules_canceled_at" {
  description = "Map of canceled_at values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no canceled_at are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.canceled_at if v.canceled_at != null }
}
output "subscription_schedules_completed_at" {
  description = "Map of completed_at values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no completed_at are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.completed_at if v.completed_at != null }
}
output "subscription_schedules_created" {
  description = "Map of created values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no created are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.created if v.created != null }
}
output "subscription_schedules_current_phase" {
  description = "Map of current_phase values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no current_phase are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.current_phase if v.current_phase != null && length(v.current_phase) > 0 }
}
output "subscription_schedules_customer" {
  description = "Map of customer values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no customer are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "subscription_schedules_customer_account" {
  description = "Map of customer_account values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no customer_account are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "subscription_schedules_default_settings" {
  description = "Map of default_settings values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no default_settings are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.default_settings if v.default_settings != null && length(v.default_settings) > 0 }
}
output "subscription_schedules_end_behavior" {
  description = "Map of end_behavior values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no end_behavior are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.end_behavior if v.end_behavior != null && length(v.end_behavior) > 0 }
}
output "subscription_schedules_livemode" {
  description = "Map of livemode values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no livemode are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.livemode if v.livemode != null }
}
output "subscription_schedules_metadata" {
  description = "Map of metadata values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no metadata are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "subscription_schedules_object" {
  description = "Map of object values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no object are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.object if v.object != null && length(v.object) > 0 }
}
output "subscription_schedules_phases" {
  description = "Map of phases values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no phases are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.phases if v.phases != null && length(v.phases) > 0 }
}
output "subscription_schedules_released_at" {
  description = "Map of released_at values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no released_at are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.released_at if v.released_at != null }
}
output "subscription_schedules_released_subscription" {
  description = "Map of released_subscription values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no released_subscription are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.released_subscription if v.released_subscription != null && length(v.released_subscription) > 0 }
}
output "subscription_schedules_start_date" {
  description = "Map of start_date values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no start_date are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.start_date if v.start_date != null }
}
output "subscription_schedules_status" {
  description = "Map of status values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no status are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.status if v.status != null && length(v.status) > 0 }
}
output "subscription_schedules_subscription" {
  description = "Map of subscription values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no subscription are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.subscription if v.subscription != null && length(v.subscription) > 0 }
}
output "subscription_schedules_test_clock" {
  description = "Map of test_clock values across all subscription_schedules, keyed the same as var.subscription_schedules except keys with no test_clock are omitted"
  value       = { for k, v in stripe_subscription_schedule.subscription_schedules : k => v.test_clock if v.test_clock != null && length(v.test_clock) > 0 }
}

