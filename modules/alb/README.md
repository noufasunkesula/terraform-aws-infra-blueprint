# ALB Module

Creates:

- Application Load Balancer
- Security Group
- Target Group (HTTP)
- HTTP Listener
- Optional HTTPS Listener

Inputs:
- alb_name
- subnet_ids
- vpc_id
- target_port
- health_check_path
- enable_https
- certificate_arn

Outputs:
- ALB DNS name
- ALB ARN
- Target group ARN
- ALB SG ID
