# -----------------------------
# Terraform Multi-Env Makefile
# -----------------------------

ENV ?= dev
TF_DIR = environments/$(ENV)

# -----------------------------
# Core Commands
# -----------------------------

init:
	@echo "🚀 Initializing Terraform ($(ENV))..."
	cd $(TF_DIR) && terraform init -upgrade

plan:
	@echo "📝 Running terraform plan ($(ENV))..."
	cd $(TF_DIR) && terraform plan -var-file="terraform.tfvars"

apply:
	@echo "🚀 Applying terraform ($(ENV))..."
	cd $(TF_DIR) && terraform apply -var-file="terraform.tfvars" -auto-approve

destroy:
	@echo "🔥 Destroying terraform ($(ENV))..."
	cd $(TF_DIR) && terraform destroy -var-file="terraform.tfvars" -auto-approve

# -----------------------------
# Terraform Hygiene
# -----------------------------

fmt:
	@echo "✨ Formatting Terraform code..."
	terraform fmt -recursive

validate:
	@echo "🔍 Validating Terraform code..."
	terraform validate

clean:
	@echo "🧹 Cleaning Terraform cache..."
	find . -type d -name ".terraform" -exec rm -rf {} +
	find . -type f -name ".terraform.lock.hcl" -delete

# -----------------------------
# Shortcuts for DEV
# -----------------------------

dev-init:
	$(MAKE) init ENV=dev

dev-plan:
	$(MAKE) plan ENV=dev

dev-apply:
	$(MAKE) apply ENV=dev

dev-destroy:
	$(MAKE) destroy ENV=dev

# -----------------------------
# Shortcuts for PROD
# -----------------------------

prod-init:
	$(MAKE) init ENV=prod

prod-plan:
	$(MAKE) plan ENV=prod

prod-apply:
	$(MAKE) apply ENV=prod

prod-destroy:
	$(MAKE) destroy ENV=prod
