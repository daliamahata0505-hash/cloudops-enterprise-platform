# CloudOps Enterprise Platform

A cloud infrastructure and deployment project demonstrating Python application hosting, Docker containerization, AWS EC2 deployment, Terraform-based infrastructure inspection, and GitHub Actions automation.

## Project Overview

This project provides a foundation for deploying a Python web application on AWS EC2 using Docker and GitHub Actions. The application includes a health-check endpoint for verifying service availability.

## Technology Stack

- AWS EC2
- Python
- Docker
- Docker Hub
- Terraform
- Git and GitHub
- GitHub Actions

## Current Features

- Python web application
- Docker containerization
- Docker image published to Docker Hub
- AWS EC2 hosting
- Health-check endpoint at `/health`
- GitHub Actions deployment workflow
- Automated deployment to EC2 using SSH
- Application health verification with retry logic
- Terraform configuration for inspecting an existing EC2 instance

## Live Application

- **Website:** http://13.206.195.184/
- **Health Check:** http://13.206.195.184/health
- **Docker Hub:** https://hub.docker.com/r/daliamahata/cloudops-enterprise-platform

## Project Structure

- `app/` — Python application and Dockerfile
- `terraform/` — Terraform configuration and outputs
- `.github/workflows/` — GitHub Actions workflows
- `.gitignore` — Excludes local files and sensitive state files
- `README.md` — Project documentation

## Docker Deployment

Pull the published image:

```bash
docker pull daliamahata/cloudops-enterprise-platform:latest
```

Run the application locally:

```bash
docker run --rm -p 8000:8000 daliamahata/cloudops-enterprise-platform:latest
```

Open `http://localhost:8000/` in your browser.

Health check: `http://localhost:8000/health`

## GitHub Actions Deployment

The deployment workflow is located at `.github/workflows/deploy-ec2.yml`.

It connects to the EC2 instance using GitHub repository secrets, pulls the Docker image, replaces the running container, and checks application health.

The workflow can be triggered manually from the GitHub Actions tab.

Required repository secrets:

- `EC2_HOST`
- `EC2_SSH_KEY`

## Terraform

The Terraform configuration reads information about an existing EC2 instance. It is not intended to create a new instance.

Configure AWS authentication securely and provide the required instance ID locally before running Terraform.

## Security

- Never commit AWS credentials, access tokens, or private SSH keys.
- Store deployment credentials in GitHub Actions secrets.
- Restrict SSH access to trusted sources.
- Review infrastructure details before publishing them in a public repository.

## Project Status

The Python application, Docker image, AWS EC2 deployment, health-check endpoint, and manually triggered GitHub Actions deployment workflow are implemented and tested.

Further enhancements may include automatic deployment on code pushes, infrastructure provisioning with Terraform, monitoring, and Kubernetes integration.

## Author

Dalia Mahata
