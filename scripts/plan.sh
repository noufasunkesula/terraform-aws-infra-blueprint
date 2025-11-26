#!/usr/bin/env bash
set -e

ENVIRONMENT=$1

if [[ -z "$ENVIRONMENT" ]]; then
  echo -e "\e[31m❌ ERROR: No environment provided. Usage: ./scripts/plan.sh dev|prod\e[0m"
  exit 1
fi

echo -e "\e[36m📝 Planning Terraform for environment: $ENVIRONMENT\e[0m"

cd environments/$ENVIRONMENT

terraform plan -var-file="terraform.tfvars"

echo -e "\e[32m✅ Plan completed for $ENVIRONMENT\e[0m"
