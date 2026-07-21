# 🚀 Registration Form Application on Google Cloud Platform (GCP) using Terraform

## 📌 Project Overview

This project demonstrates the complete deployment of a Flask-based Registration Form Application on Google Cloud Platform (GCP) using DevOps best practices.

The entire infrastructure is provisioned using Terraform (Infrastructure as Code), the application is served using Gunicorn and Nginx, MongoDB runs on a separate private VM, DNS is managed using Google Cloud DNS, and HTTPS is enabled using Let's Encrypt SSL certificates.

This project represents a production-style deployment suitable for DevOps learning and portfolio demonstrations.

---

# 🏗️ Architecture

```
                    Internet
                        │
                        ▼
              registration.itisdevops.in
                        │
                Google Cloud DNS
                        │
                        ▼
                 HTTPS (SSL/TLS)
                Let's Encrypt
                        │
                        ▼
                     Nginx
                        │
                        ▼
                   Gunicorn
                        │
                        ▼
                Flask Application
                        │
                        ▼
               MongoDB Private VM
```

---

# ☁️ Cloud Infrastructure

- Google Cloud Platform
- Custom VPC
- Public Subnet
- Private Subnet
- Cloud Router
- Cloud NAT
- Firewall Rules
- Frontend VM
- MongoDB VM
- Static External IP

---

# ⚙️ Technologies Used

| Technology | Purpose |
|------------|----------|
| Terraform | Infrastructure Provisioning |
| Google Cloud Platform | Cloud Infrastructure |
| Python Flask | Backend Application |
| MongoDB | Database |
| Gunicorn | WSGI Application Server |
| Nginx | Reverse Proxy |
| Cloud DNS | Domain Resolution |
| Let's Encrypt | SSL Certificate |
| Git | Version Control |
| GitHub | Source Code Management |

---

# 📂 Project Structure

```
Registration_Form/

├── Terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── network.tf
│   ├── compute.tf
│   ├── firewall.tf
│   ├── nat.tf
│   ├── outputs.tf
│   └── .terraform.lock.hcl
│
├── registration-app/
│   ├── app.py
│   ├── config.py
│   ├── requirements.txt
│   ├── templates/
│   └── static/
│
├── README.md
└── .gitignore
```

---

# ✨ Features

- Infrastructure as Code using Terraform
- Custom VPC Networking
- Public & Private Subnets
- Cloud NAT Configuration
- Separate Frontend & Database VMs
- Flask Registration Form
- MongoDB Integration
- Gunicorn Deployment
- Nginx Reverse Proxy
- Custom Domain
- HTTPS with Let's Encrypt
- Git Version Control

---

# 🌐 Application URL

```
https://registration.itisdevops.in
```

---

# 🔐 Security Features

- HTTPS Enabled
- SSL Certificate (Let's Encrypt)
- Reverse Proxy using Nginx
- Private Database VM
- Firewall Rules
- Cloud NAT

---

# 🚀 Deployment Flow

1. Terraform provisions infrastructure.
2. Flask application is deployed on Frontend VM.
3. Gunicorn serves the application.
4. Nginx acts as Reverse Proxy.
5. MongoDB stores registration data.
6. Google Cloud DNS maps the custom domain.
7. Let's Encrypt secures the application using HTTPS.

---

# 📈 Future Enhancements

- GitHub Actions CI/CD
- Docker
- Kubernetes (GKE)
- Monitoring using Prometheus & Grafana
- Logging using Cloud Logging
- Load Balancer
- Auto Scaling
- Cloud Armor
- Secret Manager

---

# 👨‍💻 Author

Hariom

DevOps Engineer | AWS | GCP | Terraform | Docker | Kubernetes | Python | Linux
