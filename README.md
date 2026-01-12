CI/CD Capstone Project – Dockerized Web Application
Project Overview
![WhatsApp Image 2026-01-12 at 18 13 26 (1)](https://github.com/user-attachments/assets/6724bd99-b57f-4677-9fd1-83ad55cd3d40)

![WhatsApp Image 2026-01-12 at 18 13 26](https://github.com/user-attachments/assets/db348d17-4737-46a2-9634-c3afcb5401c8)


This project demonstrates a complete CI/CD pipeline that automatically builds, tests, scans, and deploys a simple 2-tier web application to a staging environment using Docker and GitHub Actions / Jenkins.

The goal is to simulate real-world DevOps workflows with best practices in containerization, automation, and deployment.

 Key Objectives

Build a simple 2-tier web application

Containerize applications using Docker best practices

Use docker-compose for local development

Implement CI/CD pipeline

Deploy automatically to staging

Document architecture, pipeline, and operations

 Architecture Overview
Application Architecture
User
 │
 ▼
Frontend (Nginx – Static HTML)
 │
 ▼
Backend (Flask API)
 │
 ▼
Database (PostgreSQL)

CI/CD Architecture
GitHub Push
   ↓
GitHub Actions / Jenkins
   ↓
Build Docker Images
   ↓
Run Unit Tests
   ↓
Security Scan (Trivy)
   ↓
Push Images to Registry
   ↓
Deploy to Staging

 Tech Stack
Layer	Technology
Frontend	HTML, Nginx
Backend	Python, Flask
Database	PostgreSQL
Containerization	Docker, Docker Compose
CI/CD	GitHub Actions / Jenkins
Security	Trivy
OS	Ubuntu Linux
 Project Structure
capstone-ci-cd/
├── backend/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
├── frontend/
│   ├── index.html
│   └── Dockerfile
├── scripts/
│   └── deploy-staging.sh
├── docs/
│   ├── architecture.md
│   ├── pipeline.md
│   └── troubleshooting.md
├── docker-compose.yml
├── .gitignore
└── README.md

 Application Details
Backend (Flask API)

/ → Returns application status

/health → Health check endpoint for CI/CD verification

Frontend

Static HTML page served via Nginx

 Docker Implementation
Docker Best Practices Used

Multi-stage builds (backend)

Lightweight base images

Non-root user for security

Layer caching optimization

Environment variable support

 Local Development (Docker Compose)

To run the entire stack locally:

docker compose up -d


Services started:

Frontend → http://localhost:8080

Backend → http://localhost:5000

Database → PostgreSQL container with persistent volume

 CI/CD Pipeline Stages
Pipeline Steps

Checkout source code

Build Docker images

Run unit tests inside containers

Scan images using Trivy

Tag and push images to registry

Deploy to staging environment

Verify deployment using health checks

 Deployment Strategy (Staging)

Deployment is handled via a shell script:

scripts/deploy-staging.sh

Deployment Actions

Pull latest Docker images

Stop and remove old containers

Start new containers

Run health checks

Confirm successful deployment

Deployment can be automated or manually triggered for staging.

 Security Considerations

Secrets are not committed to GitHub

.gitignore used for sensitive files

Container image scanning with Trivy

Non-root containers

 Monitoring & Health Checks

/health endpoint used for:

Deployment verification

CI/CD pipeline validation

Docker logs used for troubleshooting

 Testing Strategy

Basic unit tests for backend

Health check validation during deployment

Pipeline fails on test or scan failure

 Rollback Strategy

Previous container version retained

On deployment failure:

Old container can be restarted

New container is stopped

Manual rollback supported

 Documentation Included

Architecture diagrams

CI/CD pipeline flow

Deployment runbook

Troubleshooting guide

 Demo Walkthrough

The demo video includes:

Code push to GitHub

CI/CD pipeline execution

Docker image build & scan

Deployment to staging

Health check verification

 Key Deliverables

✔ Working web application with database

✔ Optimized Docker images

✔ Complete CI/CD pipeline

✔ Deployment scripts

✔ Documentation & diagrams

✔ Live demo

 Key Learning Outcomes

Real-world CI/CD pipeline design

Docker production best practices

DevOps automation mindset

Secure and repeatable deployments

 One-Line Summary

Built a Dockerized 2-tier web application and automated its build, test, scan, and deployment to a staging environment using CI/CD.

 Author

Name: Shivanagoouda Patil
Role: Aspiring DevOps Engineer
Focus: CI/CD, Docker, Automation, Cloud-native workflows
