Terraform AWS 2-Tier Web Application
Once Upon a Cloud… ☁️

I wanted to make deploying a web application on AWS as easy as a single click. Instead of manually setting up servers, security, and networks every time, I decided to tell AWS exactly what I wanted using Terraform.

The goal was simple: create a scalable, secure 2-tier web application infrastructure—a web tier and a database tier—without breaking a sweat.

What Happens in This Story

VPC & Networking – The foundation of our cloud castle. Public and private subnets, route tables, and gateways all play their part.

Security Groups – Guards at the gate, making sure only the right traffic passes through.

Compute & Storage – EC2 instances for the web servers and RDS for the database, all ready to serve.

Automation & Flexibility – Terraform scripts that let you spin up or tear down the whole setup in minutes.

The Magic

Reduced infrastructure setup time from hours to minutes

Simplified management with reusable Terraform modules

Secure and scalable architecture for real-world apps

How to Join the Adventure

Clone the repo:

git clone <repo-url>
cd terraform-aws-2tier


Initialize Terraform:

terraform init


Plan and apply:

terraform plan
terraform apply


Watch your infrastructure come to life! 🌟