variable "subscription_schedules" {
  description = <<EOT
Map of subscription_schedules, attributes below
Optional:
    - billing_mode
    - customer
    - customer_account
    - default_settings
    - end_behavior
    - from_subscription
    - metadata
    - phases
    - start_date
EOT

  type = map(object({
    billing_mode = optional(object({
      flexible = optional(object({
        proration_discounts = optional(string)
      }))
      type = string
    }))
    customer         = optional(string)
    customer_account = optional(string)
    default_settings = optional(object({
      application_fee_percent = optional(number)
      automatic_tax = optional(object({
        enabled = bool
        liability = optional(object({
          account = optional(string)
          type    = string
        }))
      }))
      billing_cycle_anchor = optional(string)
      billing_thresholds = optional(object({
        amount_gte                 = optional(number)
        reset_billing_cycle_anchor = optional(bool)
      }))
      collection_method      = optional(string)
      default_payment_method = optional(string)
      description            = optional(string)
      invoice_settings = optional(object({
        account_tax_ids = optional(list(string))
        days_until_due  = optional(number)
        issuer = optional(object({
          account = optional(string)
          type    = string
        }))
      }))
      on_behalf_of = optional(string)
      transfer_data = optional(object({
        amount_percent = optional(number)
        destination    = string
      }))
    }))
    end_behavior      = optional(string)
    from_subscription = optional(string)
    metadata          = optional(map(string))
    phases = optional(list(object({
      add_invoice_items = optional(list(object({
        discountable = optional(bool)
        discounts = optional(list(object({
          coupon         = optional(string)
          discount       = optional(string)
          promotion_code = optional(string)
        })))
        metadata = optional(map(string))
        period = optional(object({
          end = object({
            timestamp = optional(number)
            type      = string
          })
          start = object({
            timestamp = optional(number)
            type      = string
          })
        }))
        price = optional(string)
        price_data = optional(object({
          currency            = string
          product             = string
          tax_behavior        = optional(string)
          unit_amount         = optional(number)
          unit_amount_decimal = optional(number)
        }))
        quantity  = optional(number)
        tax_rates = optional(list(string))
      })))
      application_fee_percent = optional(number)
      automatic_tax = optional(object({
        enabled = bool
        liability = optional(object({
          account = optional(string)
          type    = string
        }))
      }))
      billing_cycle_anchor = optional(string)
      billing_thresholds = optional(object({
        amount_gte                 = optional(number)
        reset_billing_cycle_anchor = optional(bool)
      }))
      collection_method      = optional(string)
      currency               = optional(string)
      default_payment_method = optional(string)
      default_tax_rates      = optional(list(string))
      description            = optional(string)
      discounts = optional(list(object({
        coupon         = optional(string)
        discount       = optional(string)
        promotion_code = optional(string)
      })))
      duration = optional(object({
        interval       = string
        interval_count = optional(number)
      }))
      end_date = optional(number)
      invoice_settings = optional(object({
        account_tax_ids = optional(list(string))
        days_until_due  = optional(number)
        issuer = optional(object({
          account = optional(string)
          type    = string
        }))
      }))
      items = list(object({
        billing_thresholds = optional(object({
          usage_gte = number
        }))
        discounts = optional(list(object({
          coupon         = optional(string)
          discount       = optional(string)
          promotion_code = optional(string)
        })))
        metadata = optional(map(string))
        plan     = optional(string)
        price    = optional(string)
        price_data = optional(object({
          currency = string
          product  = string
          recurring = object({
            interval       = string
            interval_count = optional(number)
          })
          tax_behavior        = optional(string)
          unit_amount         = optional(number)
          unit_amount_decimal = optional(number)
        }))
        quantity  = optional(number)
        tax_rates = optional(list(string))
      }))
      metadata           = optional(map(string))
      on_behalf_of       = optional(string)
      proration_behavior = optional(string)
      start_date         = optional(number)
      transfer_data = optional(object({
        amount_percent = optional(number)
        destination    = string
      }))
      trial     = optional(bool)
      trial_end = optional(number)
    })))
    start_date = optional(number)
  }))
}

