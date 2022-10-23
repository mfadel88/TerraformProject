
# Terraform Hands-on-LAB ITI




## AWC CP dir Scripts content
### Day1

-  Vpc
-  Internet gateway
-  Natgateway
-  Public route
-  Private route table
-  Public route
-  Private route
-  Two public subnets
-  Two private subnets
-  Ppublic route table attached to public subnets
-  Private route table attached to private subnets
-  S3 as a backend
-  Dynamodb for state lock
-  Security group which allow ssh from 0.0.0.0/0
-  Security group that allow ssh and port 3000 from vpc cidr only
-  Ec2(bastion) in public subnet with security group from 7
-  Ec2(application) private subnet with security group from 8

### Day2
-  Two workspaces dev and prod
-  Two variable definition files(.tfvars) for the two environments
-  Separate network resources into network module
-  Apply your code to  two environments one in us-east-1 and eu-central-1
-  Run local-exec provisioner to print the public_ip of bastion ec2
-  Upload infrastructure code on github project
-  RDS (mysql)
-  Elastic cache

### Manual
-  Verify your email in ses service
-  Lambda function to send email
-  Trigger to detect changes in state file and send the email

