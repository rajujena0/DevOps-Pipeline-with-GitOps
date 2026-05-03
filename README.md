# 🚀 DevOps CI/CD & GitOps Pipeline on AWS EKS (Fargate)

An end-to-end production-grade DevOps pipeline implementing CI/CD, security scanning, GitOps, and monitoring using modern cloud-native tools.

---

## 📌 Project Overview

This project demonstrates a complete DevOps workflow:

- Automated CI pipeline using GitHub Actions
- Docker image build and vulnerability scanning with Trivy
- Image storage in Amazon ECR
- GitOps-based deployment using ArgoCD
- Application deployment on Amazon EKS (Fargate)
- Public access via AWS ALB Ingress
- Monitoring using Prometheus & Grafana *(in progress)*

---

## 🏗️ Architecture


GitHub → GitHub Actions (CI)
↓
Docker Image → Trivy Scan
↓
Amazon ECR
↓
ArgoCD (GitOps)
↓
Amazon EKS (Fargate)
↓
ALB Ingress (Public Access)
↓
Prometheus + Grafana (Monitoring)


---

## 🛠️ Tech Stack

| Category            | Tools Used |
|--------------------|-----------|
| CI/CD              | GitHub Actions |
| Containerization   | Docker |
| Security           | Trivy |
| Container Registry | Amazon ECR |
| GitOps             | ArgoCD |
| Orchestration      | Amazon EKS (Fargate) |
| Networking         | AWS ALB Ingress |
| Monitoring         | Prometheus, Grafana *(in progress)* |

---

## 📂 Repository Structure


.
├── app/ # Application source code
├── k8s/ # Kubernetes manifests
│ ├── deployment.yaml
│ ├── service.yaml
│ └── ingress.yaml
├── .github/workflows/ # CI/CD pipeline
│ └── deploy.yml
├── Dockerfile
└── README.md


---

## ⚙️ CI/CD Pipeline Flow

1. Code pushed to GitHub
2. GitHub Actions pipeline triggered
3. Docker image built
4. Image scanned using Trivy
5. Image pushed to Amazon ECR
6. ArgoCD detects changes
7. Automatically deploys to EKS

---

## 🔐 Security

- Integrated Trivy for container vulnerability scanning
- IAM roles with least privilege access
- Secure image storage in Amazon ECR

---

## ☸️ Kubernetes Deployment

- Running on Amazon EKS using Fargate (serverless)
- No EC2 node management required
- ALB Ingress used for external traffic routing

---

## 📊 Monitoring (In Progress)

- Prometheus for metrics collection
- Grafana for visualization dashboards

---

## 🚀 How to Run (High-Level)

```bash
# Clone repo
git clone https://github.com/rajujena0/DevOps-Pipeline-with-GitOps.git

# Apply Kubernetes manifests
kubectl apply -f k8s/

# Check resources
kubectl get pods -n devops
kubectl get ingress -n devops
