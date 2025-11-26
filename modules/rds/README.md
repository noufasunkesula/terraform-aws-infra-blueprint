# RDS Module

This module creates:

- RDS Database Instance (Postgres/MySQL)
- Subnet group
- Security group
- Storage autoscaling
- Multi-AZ optional
- Encrypted storage

## Inputs
- engine
- engine_version
- instance_class
- username
- password
- private_subnet_ids
- vpc_id

## Outputs
- DB endpoint
- DB identifier
- Security group ID
