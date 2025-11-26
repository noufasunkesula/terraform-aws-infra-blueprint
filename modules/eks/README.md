# EKS Module

Creates:

- EKS Cluster
- IAM Roles for cluster & nodes
- Managed Node Group
- Cluster endpoint & certificate

Inputs:
- VPC ID
- Public & private subnet IDs
- Node group configuration

Outputs:
- Cluster name
- API endpoint
- Certificate authority
- Node IAM role ARN
