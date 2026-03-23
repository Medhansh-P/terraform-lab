# Terraform Lab – Infrastructure as Code

## Overview

This lab demonstrates the use of Terraform to manage infrastructure using code instead of manual setup.

---

## Day 1: Introduction

- Installed Terraform and initialized project
- Created a local file using Terraform
- Used variables and outputs

---

## Day 2: Variables

- Parameterized filename and content
- Used `dev.tfvars` and `prod.tfvars` for environment-based configuration

---

## Day 3: Docker with Terraform

- Configured Docker provider
- Pulled nginx image and created a container
- Exposed container on localhost

---

## Day 4: Modules & Dynamic Infrastructure

- Created reusable module for nginx container
- Used module to deploy multiple containers
- Implemented `for_each` to dynamically create containers

---

## Day 5: CI/CD

- Created GitHub Actions workflow
- Automated `terraform fmt`, `validate`, and `plan`

---

## Conclusion

Successfully implemented Infrastructure as Code using Terraform with modular and dynamic resource creation.
