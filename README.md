# exetel


## Requirement
* Create a t2.micro EC2 instance called test-ec2 in ap-southeast-2
* Using Ubuntu LTS 20.04 AMI
* Ansible playbook to deploy and provision a nginx web server
* Output the instance ID and IP address 

## Tech stack
* Terraform
* GitAction
* Ansible
* AWS EC@
* Nginx
* npm
* node
* AWS-SDK for js


## Components.
### Infarstructure (Terraform)
* VPC Creation
* Subnet Creation
* Internet Gateway Creation
* Security Group Creation
* EIP Creation
* Route Table Creation and Association
* tfstate intergrate with AWS S3

### Application (Ansible)
* Nginx Installation
* npm and node installation
* node js application creation and deplyent
* nginx reverse proxy configuaration 


## Prerequisite steps

* Craate an aws Account in aws console
* Create IAM user with Access keys
* Place these credentials in GIT secret values as repository secrets (AWS_ACCESS_KEY_ID , AWS_SECRET_ACCESS_KEY)
* Create pem key by using aws console and place value in git secret as SSH_PRIVATE_KEY
* Create another secret with following fromat and save as  ANSIBLE_INVENTORY (<<EIP>> ansible_uer:<<ec2_user>>)

## Build and deploy the service.

### Infarstructure
  * When there are any changes in the master branch inside the infarstructure folder, the infarstructure deployment will apply automatically.
### Application
  * When there are any changes in the master branch inside the Ansible folder, application deployment will apply automatically.
