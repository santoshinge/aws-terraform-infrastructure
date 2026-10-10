# AWS Infrastructure Automation using Terraform

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS infrastructure.

The solution automatically deploys:

- VPC
- Public Subnet
- Security Group
- EC2 Instance

## Architecture

aws-terraform-infrastructure/
├── README.md
├── architecture/
│   └── aws-architecture.png
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── versions.tf
└── .gitignore

## Technologies Used

- AWS
- Terraform
- Infrastructure as Code (IaC)

## Resources Created

| Resource | Purpose |
|-----------|---------|
| VPC | Network Isolation |
| Public Subnet | Host Public Resources |
| Security Group | Network Access Control |
| EC2 Instance | Application Server |

## Deployment

```bash
terraform init
terraform validate
terraform plan
terraform apply
