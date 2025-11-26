#!/usr/bin/env bash
set -e

ENVIRONMENT=$1

if [[ -z "$ENVIRONMENT" ]]; then
  echo -e "\e[31m❌ ERROR: No environment provided. Usage: ./scripts/init.sh dev|prod\e[0m"
  exit 1
fi

echo -e "\e[34m🔧 Initializing Terraform for environment: $ENVIRONMENT\e[0m"

cd environments/$ENVIRONMENT

terraform init -upgrade

echo -e "\e[32m✅ Terraform init completed for $ENVIRONMENT\e[0m"
