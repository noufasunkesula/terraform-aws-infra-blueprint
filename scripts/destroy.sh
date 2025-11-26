#!/usr/bin/env bash
set -e

ENVIRONMENT=$1

if [[ -z "$ENVIRONMENT" ]]; then
  echo -e "\e[31m❌ ERROR: No environment provided. Usage: ./scripts/destroy.sh dev|prod\e[0m"
  exit 1
fi

echo -e "\e[31m🔥 Destroying Terraform resources for: $ENVIRONMENT\e[0m"

cd environments/$ENVIRONMENT

terraform destroy -var-file="terraform.tfvars" -auto-approve

echo -e "\e[32m🧹 Destroy completed for $ENVIRONMENT\e[0m"
