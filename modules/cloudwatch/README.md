# CloudWatch Module

Creates:

- CloudWatch Log Group
- Optional CloudWatch Metric Alarm
- Optional SNS notifications

Inputs:
- log_group_name
- retention_in_days
- alarm_name (optional)
- alarm_metric (optional)
- threshold (optional)
- sns_topic_arn (optional)

Outputs:
- Log group name
- Alarm name (if created)
