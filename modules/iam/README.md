# IAM Module

Creates:

- IAM Role
- IAM Policy
- Role → Policy attachment

Useful for:
- EC2
- ECS Tasks
- Lambda
- EKS
- Custom services

Inputs:
- Role name
- Assume-role service
- JSON policy document

Outputs:
- Role name
- Role ARN
- Policy ARN
