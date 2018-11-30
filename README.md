## Terraform EKS 

Terraform documentation can be found [here](https://www.terraform.io/docs/providers/aws/guides/eks-getting-started.html)

## Steps

* Run `terraform plan` and `terraform apply` to create infrastructure
* Export kubeconfig
  * Install `aws-iam-authenticator` from [here](https://docs.aws.amazon.com/eks/latest/userguide/configure-kubectl.html)
  * Run `aws eks update-kubeconfig --name <EKS-NAME>`
* Join worker node
  * Run terraform output config_map_aws_auth and save the configuration into a file, e.g. config_map_aws_auth.yaml
  * Run `kubectl apply -f config_map_aws_auth.yaml`
  * You can verify the worker nodes are joining the cluster via: `kubectl get nodes --watch`