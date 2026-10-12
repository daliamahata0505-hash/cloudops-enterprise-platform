# CloudOps Enterprise Platform

A cloud infrastructure and deployment project demonstrating application containerization, AWS EC2 hosting, Terraform-based infrastructure inspection, and automated testing.

## Project Overview

This project provides a foundation for deploying a Python web application on AWS using Docker, Terraform, and GitHub.

## Technology Stack

- AWS EC2
- Python
- Docker
- Terraform
- Git and GitHub
- GitHub Actions (planned)

## Current Features

- Python web application
- Docker containerization
- Health-check endpoint at /health
- AWS EC2 deployment
- Terraform configuration to inspect an existing EC2 instance
- GitHub version control

## Project Structure

- app/ - Python application and Dockerfile
- terraform/ - Terraform configuration and outputs
- .gitignore - Excludes local files and sensitive state files
- README.md - Project documentation

## Run Locally

Requirements: Python 3.12 or compatible.

From the app directory, run:

    python app.py

Open http://localhost:8000 in your browser.

Health check: http://localhost:8000/health

## Run with Docker

From the project root, build the image:

    docker build -t cloudops-enterprise-platform ./app

Run the container:

    docker run --rm -p 8000:8000 cloudops-enterprise-platform

Open http://localhost:8000.

## Terraform

The Terraform configuration reads information about an existing EC2 instance. It is not intended to create a new instance.

Configure AWS authentication securely and provide the required cloudops_instance_id variable locally before running Terraform.

## Security

- Never commit AWS credentials, passwords, tokens, or private keys.
- Terraform state and local variable files are excluded through .gitignore.
- Review infrastructure details before publishing to a public repository.

## Project Status

The Python application, Docker configuration, and initial Terraform configuration are in place. Automated testing and additional Kubernetes, Lambda, and monitoring modules are planned.

## Author

Dalia Mahata
