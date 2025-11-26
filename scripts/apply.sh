#!/usr/bin/env bash
set -e

ENVIRONMENT=$1

if [[ -z "$ENVIRONMENT" ]]; then
  echo -e "\e[31m❌ ERROR: No environment provided. Usage: ./scripts/apply.sh dev|prod\e[0m"
  exit 1
fi

echo -e "\e[33m🚀 Applying Terraform for environment: $ENVIRONMENT\e[0m"

cd environments/$ENVIRONMENT

terraform apply -var-file="terraform.tfvars" -auto-approve

echo -e "\e[32m🎉 Apply successful for $ENVIRONMENT\e[0m"
