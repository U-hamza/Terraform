# Assignment 1

## Project Structure 

<img width="220" height="400" alt="Screenshot 2026-06-30 at 21 13 22" src="https://github.com/user-attachments/assets/568dd1e6-0db2-4c07-b8a7-882193ded711" />

<br/>



## Terraform Provider/Resource 

<img width="289" height="293" alt="Screenshot 2026-06-30 at 21 18 25" src="https://github.com/user-attachments/assets/ef06cfb0-ca22-4602-8054-ee2c793edebc" />


<img width="325" height="311" alt="Screenshot 2026-07-01 at 18 05 41" src="https://github.com/user-attachments/assets/9df1a7cc-cb9b-46d6-a292-a413a57f5395" />



The provider/resource code was taken directly from the HashiCorps website. 



## Create variables.tf

After all relevant files have been created, configure the variables to create the instance. The region, instance type, and a key name were the main varaibles needed to create this instance. 

<img width="394" height="315" alt="Screenshot 2026-07-01 at 18 11 04" src="https://github.com/user-attachments/assets/a8b5db46-4198-4237-ad94-700ac343e914" />


## Terraform.tfvars
In this file sensitive information such as key pair names should be stored. Define it using the correct variable. The key pair should already be created on the AWS console and needs to be defined in this file. 


<img width="375" height="100" alt="Screenshot 2026-07-01 at 18 14 32" src="https://github.com/user-attachments/assets/1e18aa70-e2b0-449d-b3c3-84c945d09ccc" />



## User Data Script
The user data script needs to be in the userdata.sh file.

The configurations below were used to set up the data script. Wordpress packages were installed. 

<img width="638" height="637" alt="Screenshot 2026-07-01 at 18 38 07" src="https://github.com/user-attachments/assets/cefa2372-7059-4068-ba02-bedbca04b7ef" />

<br/>


## main.tf 
The resource code should be in the main.tf 

<img width="325" height="311" alt="Screenshot 2026-07-01 at 18 05 41" src="https://github.com/user-attachments/assets/9df1a7cc-cb9b-46d6-a292-a413a57f5395" />

<br/>

the following was used:

- ami: this was configured using the code in the main.tf file aws_ami
- <img width="410" height="276" alt="Screenshot 2026-07-01 at 19 06 52" src="https://github.com/user-attachments/assets/18d6c0d1-54ce-4e48-ac5a-326d40ce1c1d" />
- instance type: the variable for the instance_type was used.
- subnet id: this was manually entered into the resource block after a subnet was created on the AWS console.
- Futher inputs were made such as security groups etc after they were created. All code is shown in the repository. 

A VPC data block was written to allow the EC2 Instance to connect to the right VPC. The VPC ID was taken from the AWS console and inserted into the id section. 

<img width="331" height="95" alt="Screenshot 2026-07-02 at 13 28 16" src="https://github.com/user-attachments/assets/dfb6b4b6-8894-4b41-a8c7-17ff6a7a4826" />


## sg.tf (security groups)
All security group inbound and outbounds were configured in this file. The main structure/template can be found in the HashiCorps website but then needs adjusting based on requirements for the EC2 instance. 

Inbound traffic:
- HTTP over port 80
- HTTPS over port 443
- SSH over port 22 using personal public IP address

Outbound traffic: 
- All traffic 


## Outputs 
All outputs that need to be displayed should be written here. 

<img width="641" height="390" alt="Screenshot 2026-07-02 at 13 33 48" src="https://github.com/user-attachments/assets/52e0e2d2-1159-4588-8c50-e8247991f1e0" />


## Adjustments 
Ensure all code has bee updated in the main.tf after security groups, vpc's etc. This infrastrucure can now be deployed using Terraform init. 


## Terraform Deployment
- Terraform init - this will initialise Terraform
- Terraform plan - this will allow you to see what is being deployed or any changes.
- Terraform apply - this will then apply all changes and run the code to create the instance


The outputs should be displayed as shown below and wordpress should be running on the wordpress public id.

<img width="987" height="317" alt="Screenshot 2026-06-19 at 20 52 22" src="https://github.com/user-attachments/assets/6622e8cd-3c79-44cb-880f-08d4fecc7fa9" />

<br/>


<img width="1421" height="880" alt="Screenshot 2026-06-19 at 20 52 40" src="https://github.com/user-attachments/assets/7bf28c86-bfc4-423b-b8f0-72719361de91" />


<br/>


<img width="1429" height="823" alt="Screenshot 2026-06-19 at 20 53 06" src="https://github.com/user-attachments/assets/584bc2f4-cfe7-4307-aef1-6cf05ddc8847" />



## .gitignore

.gitignore file needs to contain all sensitive information that should not be pushed to github such as terraform.tfvars which contains sensitive information like key pairs for EC2 instances. 


## Challenges

During this project, I deployed a WordPress environment on AWS using Terraform and encountered several real-world infrastructure challenges. The main issues included launching an EC2 instance without a public IP address using Terraform. I also discovered that my initial user-data script was incompatible with Amazon Linux 2023, which prevented the web server from starting and caused the website to return connection errors.

To resolve these problems, I learned how public subnets, route tables, Internet Gateways, and security groups work together to provide internet access. I also gained practical experience in debugging cloud-init/user-data scripts, understanding the difference between connection timed out and connection refused errors, and verifying services directly on the EC2 instance using SSH.

Overall, the project strengthened my understanding of Infrastructure as Code (IaC), Terraform resource management, AWS networking fundamentals and troubleshooting end-to-end cloud deployments.






