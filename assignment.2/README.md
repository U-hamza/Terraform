
## Project Structure 

<img width="245" height="461" alt="Screenshot 2026-07-02 at 13 56 22" src="https://github.com/user-attachments/assets/605f0bd5-0670-4d69-8358-451cdfb2a51c" />


This project did not need major adjustments to the infrastructure compared to the wordpress project but needed to deploy the instance using cloud init. Therefore, the main difference between the two was in the user data scripts.


# userdata directory 
This directory contained the new user data script for cloud init. To Allow the code to run in needs to be in a .yaml file and stored under a seperate directory.



# Result 
Terraform had succesfully deployed the instance using cloud init. 

<img width="1433" height="703" alt="Screenshot 2026-06-23 at 20 01 17" src="https://github.com/user-attachments/assets/537e0331-ac95-4c58-9b9d-ccf9b6f2c0c9" />





## Challenges 

One of the main challenges in this project was ensuring the cloud-init configuration executed correctly during the instance's first boot and integrating it seamlessly with Terraform. 
By troubleshooting configuration issues and validating the deployment process, I gained a better understanding of cloud-init, and Terraform's user_data functionality.

