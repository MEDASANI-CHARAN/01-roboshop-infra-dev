#!/bin/bash

# Install yum-utils (for yum-config-manager)
sudo yum install -y yum-utils

# Add the HashiCorp repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# Clean and make sure repo is added
sudo yum clean all
sudo yum makecache

# Install Terraform
sudo yum install -y terraform

# Verify Installation
terraform -version
