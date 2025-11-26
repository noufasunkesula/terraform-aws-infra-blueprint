# ECS Module

Creates:

- ECS Cluster
- IAM Task Execution Role
- Task Definition (Fargate)
- ECS Service
- Optional ALB integration

Inputs:
- Cluster name
- Service name
- Docker image
- Container port
- Subnet IDs
- Security groups
- Target group ARN (optional)

Outputs:
- Cluster ID
- Service name
- Task definition ARN
- Execution role ARN
