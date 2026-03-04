# Capstone Project: Super Mario Game Deployment leveraging modern DevOps Tools and Cloud Technology

**Objective:** Super Mario game deployment faces challenges in setting up a scalable and efficient infrastructure to host the game application. The project requires transforming manual deployment processes into automated workflows, leveraging modern DevOps tools and cloud technologies. This transformation is critical for ensuring high availability, seamless updates, and robust performance of the application.
The project aims to:
- Set up a secure and scalable AWS infrastructure using Terraform.
- Automate the deployment and configuration process using tools like Docker and Kubernetes.
- Host the game application on an EKS cluster with load balancer integration.


**Real-time Scenario:** A gaming company, PixelPlay Studios, has developed an online multiplayer version of the Super Mario game. With the game's growing popularity, the company faces challenges in managing its deployment infrastructure.
They want to ensure that:
- The application scales dynamically to handle fluctuating user traffic during peak gaming hours.
- Deployment is seamless, minimizing downtime during updates to keep users engaged.
- Infrastructure is cost-efficient while maintaining high availability across regions.

To address these challenges, PixelPlay Studios adopts DevOps practices to deploy and manage their game.

## Services, Tools & Environment Used in this Project:

- AWS EKS
- AWS CLI
- Jenkins
- Terraform
- Docker
- Kubectl
- Load-Balancer
- S3

## High Level Project Diagram:

<img width="964" height="522" alt="image" src="https://github.com/user-attachments/assets/bb007bdb-cd4f-4f74-973c-0cb9f7f2a4af" />

-------------------------------------------------------------------------------------------------------------------------------------

## High Level Tasks/Steps:

-	Prepare or fork a GitHub Repository for project related files. 
-	Launch an AWS EC2 Instance and assign an IAM Role.
-	Create Amazon S3 bucket and update it in Terraform backend file.
-	Install and Setup Jenkins server on AWS EC2 Instance.
-	Configure “jenkins” user to run Pipeline script with multiple sudo commands.
-	Create a Pipeline script with multiple stages:
	- To Install various tools (Docker, AWS CLI, Kubectl, Terraform).
	- Checkout from Github repo: Terraform files, Resource definition files.
  	- Run Terraform main workflow commands.
	- Deploy Mario app on AWS EKS using k8s deployment & service.
 	- Deprovision and Clean up Infrastructure & K8s Resources.
-	Create a Jenkins Job (pipeline), Pull the Jenkinsfile and Build the Job.
-	Observe the Console Output logs till the Job build gets completed.
-	Post Job run,  get Load Balancer URL and access the Application on browser.

-------------------------------------------------------------------------------------------------

## Output Results Screenshots:

Create Amazon S3 bucket and update it in Terraform backend file

<img width="907" height="492" alt="image" src="https://github.com/user-attachments/assets/5c135392-925e-4959-8322-51523e7b4b43" />

------------------------------------------------------------------

<img width="839" height="478" alt="image" src="https://github.com/user-attachments/assets/96fafc7b-1303-4ae7-bfb6-af7822177087" />

-------------------------------------------------------------------------------------------

Install and Setup Jenkins server on AWS EC2 Instance

<img width="962" height="380" alt="image" src="https://github.com/user-attachments/assets/b71ab632-85a9-4be9-b83a-343dd73af824" />

------------------------------------------------------------------------------------------------

<img width="975" height="507" alt="image" src="https://github.com/user-attachments/assets/df724905-a205-43df-ae72-aa236ad73ba9" />

------------------------------------------------------------------------------------------------

<img width="902" height="388" alt="image" src="https://github.com/user-attachments/assets/2449cf87-515a-45b0-8c0c-d7c37fa3fcc8" />

---------------------------------------------------------------------------------------------

<img width="936" height="454" alt="image" src="https://github.com/user-attachments/assets/03b9f877-47ea-42a2-965c-c62f6e1e3e61" />

----------------------------------------------------------------------------------

Configure Jenkins and Create a Pipeline script with multiple stages

The detailed content of the complete Pipeline Script can be found in Jenkinsfile kept under Github repository:

<img width="1743" height="1016" alt="image" src="https://github.com/user-attachments/assets/2ccc1624-3421-44ef-91a6-aa4eec268800" />

--------------------------------------------------------------------------------------------

Create a Jenkins Job (pipeline), Pull the Jenkinsfile and Build the Job

<img width="884" height="417" alt="image" src="https://github.com/user-attachments/assets/b84bdf1f-5df0-4a77-bbea-9280c1ec704c" />

-----------------------------------------------------------------------------------------------

<img width="862" height="470" alt="image" src="https://github.com/user-attachments/assets/f876451f-ff8d-4ae0-8ee8-2a55a24ff7ba" />

---------------------------------------------------------------------------------------------------

<img width="963" height="379" alt="image" src="https://github.com/user-attachments/assets/a19dc751-8b74-432f-abae-1aee139f86c7" />

----------------------------------------------------------------------------------------------------

Observe the Console Output logs till the Job build gets completed

<img width="961" height="449" alt="image" src="https://github.com/user-attachments/assets/650de3eb-4c62-4298-add9-90c79ab375f7" />

----------------------------------------------------------------------------------------------------

<img width="959" height="412" alt="image" src="https://github.com/user-attachments/assets/e5e163e1-4c24-4f28-a97a-ea8e99a25341" />

-----------------------------------------------------------------------------------------------------

<img width="959" height="589" alt="image" src="https://github.com/user-attachments/assets/77e24349-7d3f-4395-af81-30e4c5628be7" />

-------------------------------------------------------------------------------------------------------

<img width="965" height="654" alt="image" src="https://github.com/user-attachments/assets/30369391-b03b-4ebf-8518-e16feb079eaf" />

-----------------------------------------------------------------------------------------------------------

<img width="922" height="573" alt="image" src="https://github.com/user-attachments/assets/3cd9366b-8b5a-44e9-95ca-7b9d86b6f1f1" />

------------------------------------------------------------------------------------------------------------

The Jenkins – Job Pipeline execution gets completed successfully. The Console Output logs displays the success message at the end of pipeline.

<img width="947" height="529" alt="image" src="https://github.com/user-attachments/assets/19a2e859-6bf9-4b32-8ab4-7ea66ea9771b" />

---------------------------------------------------------------------------------------------------------------

<img width="968" height="327" alt="image" src="https://github.com/user-attachments/assets/68706ac2-8b3b-440e-875c-6b41e1db9dcd" />

----------------------------------------------------------------------------------------------------------------

Post Job run,  get Load Balancer URL and access the Application on browser.

<img width="959" height="363" alt="image" src="https://github.com/user-attachments/assets/13b4cb68-958d-4cec-aa2c-9cf4934a2abe" />

---------------------------------------------------------------------------------------------------

<img width="964" height="528" alt="image" src="https://github.com/user-attachments/assets/2f00c480-b543-495e-b5c8-d25053a5d835" />

---------------------------------------------------------------------------------------------------

Enter this DNS name/URL in the browser to access the Super Mario game application:

https://a891286bfe9824d9b82670e9c3f5764d-1159299015.us-east-1.elb.amazonaws.com/

<img width="966" height="526" alt="image" src="https://github.com/user-attachments/assets/d2b21b5a-7941-4d92-95ff-d1d2b67ef54f" />

-----------------------------------------------------------------------------------------------------

Tried playing the game for some time and No issues were found. 

<img width="966" height="489" alt="image" src="https://github.com/user-attachments/assets/52d63f67-243e-444c-9448-8d8311d6ad4b" />

-------------------------------------------------------------------------------------------------------

**By using a Jenkins pipeline, the above Project set-up a secure, reliable and scalable AWS infrastructure using Terraform. Automated the deployment and configuration of Super Mario game application on Amazon EKS cluster with load balancer integration.**

**This end-to-end Jenkins Pipeline not only makes deployments faster but also ensures that every step in the Provisioning of Infrastructure and Deployment process is repeatable, transparent, customizable and error-free.**


