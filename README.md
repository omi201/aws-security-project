# AWS Secure Cloud Framework - Terraform Project

## 🔒 Project Overview
This Terraform project **automates the deployment of a secure AWS cloud environment** using **Terraform**.
It includes **AWS security best practices** for **identity management, threat detection, compliance enforcement, incident response, and disaster recovery**.

### 📌 Key Features
✅ **AWS Security Best Practices** applied for access control, encryption, and monitoring.  
✅ **Real-time Threat Detection** using AWS GuardDuty & Security Hub.  
✅ **Automated Incident Response** with AWS Lambda & SNS.  
✅ **Compliance Enforcement** with AWS Config & Audit Manager.  
✅ **Disaster Recovery & Backup** using AWS Backup & Route 53 failover.  
✅ **GitHub Actions CI/CD Pipeline** to automate Terraform deployments.  

---

## 👥 Who Can Use This Project?
🔹 **AWS Security Engineers** → To implement **cloud security controls**.  
🔹 **DevOps Teams** → To **automate AWS security workflows**.  
🔹 **CISOs & Cloud Architects** → To enforce **security governance**.  
🔹 **Penetration Testers & Ethical Hackers** → To test AWS defenses.  

---

## 💰 Estimated AWS Costs
This project deploys multiple AWS security services. Below is a cost estimation based on AWS pricing:

| **AWS Service**       | **Purpose**                            | **Estimated Cost (per month)** |
|----------------------|--------------------------------------|--------------------------------|
| **IAM**              | Identity & Access Management         | **Free**                      |
| **AWS GuardDuty**    | Threat detection                     | ~$1 per million events        |
| **AWS Security Hub** | Centralized security monitoring      | ~$0.001 per security finding  |
| **AWS Config**       | Compliance enforcement & auditing    | ~$0.003 per config rule       |
| **AWS WAF & Shield** | Web security & DDoS protection      | ~$20 per ACL + request costs  |
| **AWS KMS**          | Encryption for S3, EBS, Secrets Manager | ~$1 per key per month  |
| **AWS Backup**       | Data backup & retention              | ~$0.05 per GB stored          |
| **AWS Route 53**     | DNS security & failover              | ~$0.40 per health check       |
| **AWS Lambda**       | Automated remediation                | **Free (First 1M requests)**  |
| **AWS S3**          | Encrypted storage                    | ~$0.023 per GB stored         |
| **AWS EC2 (Test Machine)** | Running test instances        | ~$8 - $50 per month (depends on instance type) |

💡 **Estimated Total Cost:** ~$10 - $100/month (varies with actual usage).  
🔥 **AWS Free Tier** covers some services like IAM, Lambda (1M requests), and AWS Config (first 1000 evaluations).  

---

## 📂 Project Directory Structure
```
aws-security-project/
│── main.tf             # Main Terraform configuration
│── vpc.tf              # VPC setup (Subnets, Security Groups, NACLs)
│── iam.tf              # IAM roles & permissions
│── security.tf         # GuardDuty, Security Hub, Config, WAF, Shield
│── encryption.tf       # KMS, Secrets Manager, S3 encryption
│── incident_response.tf # Lambda for automated security response
│── backup.tf           # AWS Backup, Route 53 disaster recovery
│── outputs.tf          # Terraform outputs
│── variables.tf        # Variable definitions
│── providers.tf        # AWS provider setup
│── backend.tf          # S3 remote backend for state storage
│── .github/workflows/terraform.yml  # CI/CD Pipeline for Terraform
│── deploy.sh           # Shell script to initialize and deploy Terraform
│── README.md           # Project documentation
```

---

## 🚀 How to Deploy from GitHub
### **Step 1: Clone the Repository**
```sh
git clone https://github.com/omi201/aws-security-project.git
cd aws-security-project
```

### **Step 2: Install Terraform**
Download and install Terraform from **[Terraform Download](https://developer.hashicorp.com/terraform/downloads)**.

### **Step 3: Initialize Terraform**
```sh
terraform init
```

### **Step 4: Plan the Deployment**
```sh
terraform plan
```

### **Step 5: Deploy to AWS**
```sh
terraform apply -auto-approve
```

### **Step 6: Verify Deployment in AWS Console**
Go to **AWS Console** → Check:  
✅ **GuardDuty**: `Security -> GuardDuty`  
✅ **Security Hub**: `Security -> Security Hub`  
✅ **AWS Config**: `Security -> Config`  
✅ **IAM Roles & Permissions**: `IAM -> Roles`  
✅ **Backup & Disaster Recovery**: `Backup -> AWS Backup Vault`

---

## 🤖 CI/CD Pipeline - Automated Terraform Deployment
This repository includes **GitHub Actions** to automatically **deploy Terraform changes**.

### 📌 CI/CD Workflow (`.github/workflows/terraform.yml`)
```yaml
name: Terraform Deployment
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2
      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v1
      - name: Terraform Init
        run: terraform init
      - name: Terraform Plan
        run: terraform plan
      - name: Terraform Apply
        run: terraform apply -auto-approve
```

---

## 📢 Need Help?
- **Raise an issue on GitHub**
- **Contact AWS Support**
- **Reach out for additional support**

🔥 **Deploy Secure AWS Cloud Infrastructure Now with `terraform apply` 🚀**  
