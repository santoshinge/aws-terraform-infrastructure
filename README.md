# AWS Infrastructure Automation with Terraform

Infrastructure as Code (IaC) project demonstrating how to provision foundational AWS networking and compute resources using Terraform.

The goal of this project is to make infrastructure provisioning repeatable, configurable, and easier to maintain.

## Project Overview

This project uses Terraform to define the following AWS resources:

- **Amazon VPC** — isolated virtual network
- **Public subnet configuration** — subnet defined within the VPC
- **Security group** — network access rules for the EC2 instance
- **Amazon EC2** — virtual machine for compute workloads

## Architecture

![AWS Infrastructure Architecture](architecture/aws-architecture.png)

The diagram illustrates the resources defined in the Terraform configuration. Internet connectivity and public access require additional networking configuration, including an Internet Gateway, route table, and appropriate subnet settings.

## Technology Stack

| Technology | Purpose |
|---|---|
| AWS | Cloud infrastructure |
| Terraform | Infrastructure as Code |
| HCL | Infrastructure configuration language |
| Git and GitHub | Version control and project documentation |

## Repository Structure

```text
.
├── architecture/
│   └── aws-architecture.png
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .gitignore
└── README.md
```

## Prerequisites

Before starting, ensure you have:

- An AWS account
- AWS CLI installed and configured
- Terraform CLI version 1.5 or later
- Appropriate AWS IAM permissions to create and manage the required resources

## Configuration

Configure the AWS region, EC2 instance type, VPC CIDR, and subnet CIDR using Terraform variables.

Example configuration:

```hcl
aws_region    = "ap-south-1"
instance_type = "t2.micro"
vpc_cidr      = "10.0.0.0/16"
subnet_cidr   = "10.0.1.0/24"
```

Review all configuration values and resource settings before deployment.

## Deployment

Clone the repository and enter the project directory.

```bash
git clone https://github.com/santoshinge/aws-terraform-infrastructure.git

cd aws-terraform-infrastructure
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform fmt -check
terraform validate
```

Review the proposed infrastructure changes:

```bash
terraform plan
```

Apply the configuration after reviewing the plan:

```bash
terraform apply
```

## Outputs

The configuration exposes the following outputs:

- VPC ID
- Subnet ID
- EC2 instance ID

Use the Terraform output command to inspect the resulting values:

```bash
terraform output
```

## Security Considerations

- Follow the principle of least privilege when configuring IAM permissions.
- Restrict SSH access to a trusted IP address or use AWS Systems Manager Session Manager.
- Avoid hardcoding credentials, private keys, or other secrets.
- Review security group rules before deployment.
- Keep Terraform state files and sensitive configuration out of version control.
- Review AWS costs before provisioning resources.

## Cleanup

When the resources are no longer required, review the Terraform plan and remove the resources managed by this project:

```bash
terraform plan -destroy
terraform destroy
```

Only run the destroy command after confirming that the resources can safely be removed.

## Future Improvements

- Add an Internet Gateway and public route table where required.
- Configure public IP assignment explicitly if a public-facing instance is needed.
- Parameterize the Amazon Machine Image (AMI) instead of hardcoding a region-specific AMI ID.
- Add reusable Terraform modules.
- Introduce remote state storage and state locking.
- Add automated Terraform validation through a CI/CD pipeline.
- Add deployment evidence and a verified architecture diagram.

## Disclaimer

This repository is a learning and portfolio project. Review the Terraform configuration, security controls, and AWS costs before using it in any production environment.

## Author

**Santosh Inge**

Cloud Infrastructure and DevOps | Terraform | AWS | Azure | CI/CD

GitHub: https://github.com/santoshinge
