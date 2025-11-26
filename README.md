# TERRAFORM AWS INFRA BLUEPRINT


This repository contains a complete **enterprise-grade Infrastructure-as-Code platform**, designed exactly like real-world DevOps teams build for high-performance, cloud infrastructure.

It includes:

- **Terraform-first IaC**
- **Modular architecture** (AWS VPC, EKS, RDS, S3, etc.)
- **Per-environment deployments** (DEV & PROD)
- **GitHub Actions CI/CD** (manual-triggered, module-specific)
- **Drift Detection**
- **Security Scans (Trivy FS)**
- **Slack Notifications**
- **OIDC → AWS authentication (no access keys)**

This repo demonstrates **senior-level DevOps engineering practices** end-to-end.

---

## 📂 Repository Structure

```

.
├── modules/
│   ├── vpc/
│   ├── eks/
│   ├── rds/
│   ├── s3/
│   └── ... (more modules)
│
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── backend.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   └── prod/
│       ├── main.tf
│       ├── backend.tf
│       ├── terraform.tfvars
│       └── variables.tf
│
├── scripts/
│   ├── init.sh
│   ├── plan.sh
│   ├── apply.sh
│   └── destroy.sh
│
├── .github/workflows/
│   └── terraform-enterprise.yml
│
├── Makefile
├── .gitignore
└── README.md


## 🧩 **Features**

### ✔ Modular Terraform  
Each module (VPC, EKS, RDS, S3…) is reusable, version-controlled, and environment-agnostic.

### ✔ Environment Layout  
Simple and scalable `dev` + `prod` separation:

```

environments/dev
environments/prod

```

Each environment has:

- its own backend  
- its own variables  
- its own configuration  

### ✔ Makefile Shortcuts  
```

make dev-plan
make dev-apply
make prod-plan
make prod-apply

```

### ✔ Shell Script Automation  
```

./scripts/init.sh dev
./scripts/apply.sh prod

````

### ✔ CI/CD — Enterprise Grade  
Triggered manually from GitHub.  
Choose:

- **environment**  
- **module** (vpc, eks, rds, s3, or all)

Pipeline includes:

- Trivy FS Scan  
- Terraform Init / Validate / Plan / Apply  
- Plan artifact upload  
- OIDC → AWS authentication  
- Drift detection  
- Slack notifications  

---

## 🔐 **AWS Authentication (OIDC)**

This repo uses **GitHub OpenID Connect** → AWS IAM Role.

No static AWS access keys are stored in GitHub.

You must create:

- AWS IAM Role for GitHub  
- Trust policy permitting GitHub OIDC  

---

## 🚀 **Deploying Infrastructure**

### **Dev environment**
```sh
make dev-plan
make dev-apply
````

### **Prod environment**

```sh
make prod-plan
make prod-apply
```

### **Manual CI/CD Deploy**

In GitHub → Actions → **Enterprise Terraform Deployment**:

1. Choose environment
2. Choose module
3. Run workflow

---

## 🧪 **Local Terraform Commands**

```sh
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -auto-approve
```

## 🔍 **Security**

This repo includes:
```
* Trivy FS scanning
* Drift detection
* State locking (DynamoDB)
* Remote backend (S3)
* No AWS secrets committed
* Makefile hygiene rules
```

## 📬 **Slack Notifications**

Pipeline automatically posts:
```
* Scan results
* Plan completion
* Apply success
* Drift detection alerts
```

##  **Author**

**Noufa Sunkesula**


