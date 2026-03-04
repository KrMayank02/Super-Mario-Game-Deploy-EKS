# Super Mario Game Deployment leveraging modern DevOps Tools and Cloud Technology

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
  -	Run Terraform main workflow commands.
	- Deploy Mario app on AWS EKS using k8s deployment & service.
  -	Deprovision and Clean up Infrastructure & K8s Resources.
-	Create a Jenkins Job (pipeline), Pull the Jenkinsfile and Build the Job.
-	Observe the Console Output logs till the Job build gets completed.
-	Post Job run,  get Load Balancer URL and access the Application on browser.



