# The purpose of this repo is to use terraform module in two different regions

Terraform configuration files:
`main.tf` - configures the resources that make up your infrastructure.
`variables.tf`- declares input variables 
`outputs.tf`- specifies the website endpoints for the buckets

used modules:

`s3-webapp` - krasteki/terraform-aws-s3-webapp - creating s3 bucket in AWS
provider aws regions

### Prerequisites

- Terraform (version used v1.1.6) - Check [here](https://learn.hashicorp.com/tutorials/terraform/install-cli) for install instructions.
- AWS subscription - Check [here](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all) for AWS Free Tier.
- Before you can build the infrastructure, you need to provide your AWS credentials to Terraform as environment variables. You can create AWS credentials on [this page](https://console.aws.amazon.com/iam/home?#security_credential).

**Note**:Some of the infrastructure in this configuration may not qualify for the AWS free tier. Destroy the infrastructure at the end of the guide to avoid unnecessary charges.

### Setup Instructions


#### I. Clone the repo

```
$ git clone https://github.com/krasteki/terraform-use-module-different-regions.git
$ cd terraform-use-module-different-regions
```

#### II. Authenticate to AWS

```
$ export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY
$ export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
```

**Note**: You may need to also export your `AWS_SESSION_TOKEN` and `AWS_SESSION_EXPIRATION` as **environment variables**.

#### III. Run the following commands in the cloned folder:

1. `$ terraform init` - Initializing a configuration directory downloads and installs the providers defined in the configuration, which in this case is the aws provider.
2. `$ terraform fmt` - Automatically updates configurations in the current directory for readability and consistency. Format the configuration. Terraform will print out the names of the files it modified, if any. In this case, the configuration file was already formatted correctly, so Terraform won't return any file names.
3. `$ terraform validate` - Validates the configuration.
4. `$ terraform plan` - Creates an execution plan, which lets you preview the changes that Terraform plans to make to the infrastructure.
5. `$ terraform apply` - Creates the infrastructure.

##### The given output values 
```
Outputs:

ireland-bucket = "krasteki-krasteki-ireland.s3-website-eu-west-1.amazonaws.com"
london-bucket  = "krasteki-krasteki-london.s3-website.eu-west-2.amazonaws.com"
```

#### IV.Destroy configuration

`$ terraform destroy`