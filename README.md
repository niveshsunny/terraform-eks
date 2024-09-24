# Terraform EKS Cluster in Private VPC

This project demonstrates the creation of an EKS cluster in a private VPC using Terraform. All resources, including VPC, subnets, route tables, NAT gateways, and the EKS cluster, were built from scratch without using pre-built Terraform modules.

## Features

- **EKS Cluster**: Provisioned using AWS EKS.
- **Private VPC**: Custom-built VPC with private subnets for enhanced security.
- **Subnets and Route Tables**: Handled manually to control traffic flow.
- **NAT Gateways**: Ensuring private access for instances in the private subnets.
- **IAM Roles and Policies**: Configured for EKS workers and control plane.

## Prerequisites

- AWS Account
- Terraform 1.x.x
- AWS CLI
- kubectl

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/niveshsunny/terraform-eks.git
    cd terraform-eks
    ```

2. Initialize the project:

    ```bash
    terraform init
    ```

3. Apply the configuration:

    ```bash
    terraform apply
    ```

4. Update your kubeconfig to interact with the cluster:

    ```bash
    aws eks --region <region> update-kubeconfig --name <cluster_name>
    ```

5. Verify your cluster:

    ```bash
    kubectl get nodes
    ```

## Resources

- **VPC**: Custom-built VPC with private subnets.
- **EKS Cluster**: Created from scratch.
- **NAT Gateways**: Provisioned for internet access in the private subnets.
- **IAM Roles and Policies**: Configured for the EKS cluster.

## Architecture Diagram

*(Add an architecture diagram here if you have one)*

## Notes

- This project does not use pre-built Terraform modules to maintain full control and customization.
- Ensure your AWS credentials are properly configured before applying the Terraform plan.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
