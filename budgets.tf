resource "aws_budgets_budget" "my_budget" {
  name         = "MonthlyCostBudget"
  budget_type  = "COST"
  limit_amount = "5"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  notification {
    comparison_operator         = "GREATER_THAN"
    threshold                   = 80
    threshold_type              = "PERCENTAGE"
    notification_type           = "ACTUAL"
    subscriber_email_addresses  = ["dicksanarnoldsam1141@gmail.com"]
  }

  cost_filter {
    name    = "Service"
    values  = [ "Amazon Simple Storage Service"]
  }
}