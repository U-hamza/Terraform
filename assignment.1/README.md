# Assingment 1

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






