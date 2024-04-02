## Terraform Project
This Terraform project is designed to create a Kubernetes cluster using Amazon EKS in mutiple region. The project also provisions an EC2 instance to serve as an EKS worker node, deploys a container with a web interface, and sets up a load balancer to expose the web interface of the container.

## Prerequisites
AWS CLI installed and configured with appropriate credentials
Terraform installed on your local machine

## Resources Created
VPC: A Virtual Private Cloud (VPC) is created to provide networking isolation for the resources.
EKS Cluster: An Amazon EKS cluster is provisioned to orchestrate containerized applications using Kubernetes.
EC2 Instance (EKS Worker Node): An EC2 instance is launched to serve as a worker node for the EKS cluster.
Container with Web Interface: A containerized application with a web interface is deployed to run on the EKS cluster.
Load Balancer: A load balancer is configured to expose the web interface of the containerized application to external traffic.
## How to Use
Clone this repository to your local machine.
Navigate to the directory containing the Terraform configuration files.
Modify the variables in variables.tf as needed, such as VPC settings, EKS cluster configuration, EC2 instance details, etc.
Run terraform init to initialize the project.
Run terraform plan to review the execution plan and ensure it matches your expectations.
Run terraform apply to apply the Terraform configuration and create the resources.
After the resources are provisioned, access the web interface of the containerized application through the load balancer URL.
