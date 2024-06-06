# TF-RemoteState
Deploy a simple web server on GCP using Terraform with secure remote state management in Cloud Storage (TF-RemoteState).

## TF-RemoteState: Deploying a Simple Web Server on GCP with Terraform and Remote State

This project, TF-RemoteState, demonstrates deploying a basic web server on Google Cloud Platform (GCP) using Terraform with a remote state backend stored securely in Cloud Storage.
Project Goals

This project empowers you to:
    Master Terraform Configuration: Craft Terraform code to define and manage infrastructure resources like VPC network, subnet, and a Compute Engine instance.
    Leverage Variables: Employ Terraform variables to control configurable project details such as region, zone, and server name.
    Implement Remote State Management: Configure Cloud Storage as the remote backend for Terraform state, enhancing security and facilitating collaboration.
    Practice State Refresh: Learn how to refresh the Terraform state to ensure it accurately reflects the latest infrastructure configuration in GCP.

## Acquired Skills

By completing this project, you'll develop expertise in:
    1 Infrastructure as Code (IaC): Define and manage infrastructure through Terraform configurations.
    2 GCP Cloud Resource Management: Create and manage essential GCP resources like networks, subnets, and Compute Engine instances using Terraform.
    3 Terraform Best Practices: Implement best practices like remote state management for improved security and collaborative workflows.
    4 Cloud Storage Integration: Utilize Cloud Storage for storing and managing Terraform state files securely.

## Prerequisites

To embark on this project, you'll need:
    A GCP project with billing enabled
    Google Cloud SDK installed and configured on your machine
    Terraform installed locally

## Project Structure

The project utilizes the following directory structure:
```
project_dir/
  |- terraform/
     |- main.tf  (Terraform configuration file)
     |- variables.tf  (Terraform variables file)
  |- ... (other project files)
```

## Running the Project
  Configure Terraform: Fill in the variables.tf file with your specific GCP project details.
  Initialize Terraform: Navigate to the terraform directory and run terraform init.
  Configure Remote State Backend: Create a Cloud Storage bucket and configure Terraform to use it as the backend (refer to code comments in main.tf).
  Run Terraform: Execute terraform plan to preview the infrastructure changes, followed by terraform apply to create the resources in GCP.
  Simulate State Refresh: Manually create a new firewall rule for SSH access in the GCP Console. Then, run terraform refresh to update the state and ensure it reflects the latest changes.

### Important Note: Remember to clean up resources after completing the project to avoid incurring GCP charges.

### Additional Resources
    Terraform documentation: https://developer.hashicorp.com/terraform
    Google Cloud Platform documentation: https://cloud.google.com/

## Expanding the Project

TF-RemoteState provides a solid foundation for deploying and managing infrastructure on GCP using Terraform with remote state management. Feel free to explore further by:
    Installing a web server software (e.g., Apache or Nginx) on the instance.
    Implementing a startup script to automate the web server installation process.
    Delving into Terraform modules for improved code reusability and modularity.

#### This project equips you with valuable hands-on experience in deploying infrastructure on GCP with Terraform and remote state management. Feel free to experiment and customize it further to suit your specific needs.
