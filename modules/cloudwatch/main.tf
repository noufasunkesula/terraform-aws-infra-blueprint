resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.log_group_name
  retention_in_days = var.retention_in_days

  tags = {
    Name = var.log_group_name
  }
}

resource "aws_cloudwatch_metric_alarm" "alarm" {
  count               = var.alarm_name == null ? 0 : 1

  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = var.alarm_metric
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = var.threshold

  alarm_actions = var.sns_topic_arn == null ? [] : [var.sns_topic_arn]

  tags = {
    Name = var.alarm_name
  }
}
