# ☁️ Terraform AWS 2-Tier Web Application — Once Upon a Cloud

Once upon a time, deploying a web application on AWS meant clicking through countless screens, configuring networks by hand, and double-checking security rules again and again.

So I decided to change the story.

Instead of manually building infrastructure every time, I used **Terraform** to *tell AWS exactly what I want* — and let it do the work for me.

This project creates a **scalable, secure 2-tier web application architecture on AWS** with just a few commands:
- A **Web Tier** (EC2 in a public subnet)
- A **Database Tier** (RDS in a private subnet)

All automated, reusable, and ready for real-world use.

---

## 🏰 The Architecture

Our cloud castle is built with the following components:

### 🌐 VPC & Networking
- Custom VPC  
- Public and private subnets  
- Internet Gateway & route tables  

This forms the foundation where everything lives.

### 🛡️ Security Groups
- Act as guards at the gate  
- Only allow necessary traffic (for example: HTTP to web, DB access only from web tier)

### 💻 Compute & Storage
- EC2 instances for the web servers  
- Amazon RDS for the database  

### 🤖 Automation & Flexibility
- Fully defined using Terraform  
- Infrastructure can be created or destroyed in minutes  
- Easy to reuse and modify using variables and modules  

---

## ✨ The Magic

What this setup gives you:

- Reduced infrastructure setup time from **hours to minutes**
- Simplified management with **reusable Terraform modules**
- Secure and scalable architecture for real-world applications
- Fully version-controlled infrastructure (Infrastructure as Code)

---

## 🚀 How to Join the Adventure

### 1️⃣ Clone the repository

```bash
git clone terraform-aws-2tier
cd terraform-aws-2tier
```

### 2️⃣ Initialize Terraform

```bash
terraform init
```

### 3️⃣ Plan and apply the infrastructure

```bash
terraform plan
terraform apply
```

### 4️⃣ Watch your infrastructure come to life 🌟

Terraform will provision all required AWS resources and display the outputs once complete.
