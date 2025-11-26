# SSM Parameter Store Module

Stores secrets safely using AWS SSM Parameter Store.

Supports:
- SecureString (encrypted)
- Optional KMS key
- Application credentials
- JSON or plain string secrets

Inputs:
- secret_name
- secret_value
- secure_string
- kms_key_id

Outputs:
- Secret name
- Secret ARN
