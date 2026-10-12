resource "stripe_subscription_schedule" "subscription_schedules" {
  for_each = var.subscription_schedules

  billing_mode      = each.value.billing_mode
  customer          = each.value.customer
  customer_account  = each.value.customer_account
  default_settings  = each.value.default_settings
  end_behavior      = each.value.end_behavior
  from_subscription = each.value.from_subscription
  metadata          = each.value.metadata
  phases            = each.value.phases
  start_date        = each.value.start_date
}

