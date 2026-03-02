Terraform Docker Nginx DevOps Project

A beginner-friendly but production-style DevOps project demonstrating Infrastructure as Code (IaC), container provisioning, and CI automation using Terraform and GitHub Actions.

🧰 Tech Stack

Terraform — Infrastructure as Code

Docker — Container runtime

Nginx — Web server container

GitHub Actions — CI pipeline

Local Provider — Demonstrates resource provisioning

📦 What This Project Does

✔️ Provisions infrastructure using Terraform
✔️ Pulls the latest Nginx Docker image
✔️ Deploys a running container on port 8080
✔️ Creates a Terraform-managed local file
✔️ Runs automated validation with CI

🏗️ Architecture Overview

Terraform provisions:

Local file resource

Docker image (nginx)

Docker container exposing port 8080

CI pipeline automatically runs:

terraform init

terraform fmt

terraform validate

terraform plan

▶️ How to Run Locally
1️⃣ Clone repo

git clone https://github.com/YOUR_USERNAME/devops-starter-api.git
cd devops-starter-api

2️⃣ Initialize Terraform

terraform init

3️⃣ Preview changes

terraform plan

4️⃣ Apply infrastructure

terraform apply

Confirm with yes

🌐 Verify Deployment

Open your browser:

http://localhost:8080

You should see the Nginx welcome page 🎉

🧪 CI Pipeline

On every push, GitHub Actions:

✔️ Validates Terraform
✔️ Checks formatting
✔️ Runs terraform plan

This ensures infrastructure quality and reproducibility.
📚 Key DevOps Concepts Demonstrated

Infrastructure as Code

Idempotent deployments

Container orchestration basics

CI automation

Environment reproducibility

🔮 Future Improvements

Deploy to AWS or Azure

Add Terraform remote state

Add monitoring (Prometheus + Grafana)

Convert to Kubernetes deployment

👩🏽‍💻 Author

Akedi Muni
DevOps & Cloud Enthusiast
⭐ If you found this useful, feel free to star the repo!
