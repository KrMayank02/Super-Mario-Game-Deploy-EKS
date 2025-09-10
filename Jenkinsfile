pipeline{
    agent any

    stages {
         stage('Clean Workspace') {
            steps {
                cleanWs()    // Clean up previous builds
            }
        }

	    stage('Install Docker, AWS CLI, Kubectl, Terraform'){
             steps{
                 script{
                       sh '''
					   
					   #### Install Docker ####
                       sudo apt-get update -y
                       sudo apt-get install docker.io -y
                       sleep 15
                       sudo usermod -aG docker $USER
                       newgrp docker
                       sudo chmod 777 /var/run/docker.sock
					   
					   #### Install kubectl ####
                       sudo apt-get update -y
                       sudo apt-get install curl -y
                       curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
                       sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
                       sleep 15
					   
					   #### Install AWS CLI ####
                       curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                       sudo apt-get install unzip -y
                       unzip awscliv2.zip
                       sudo ./aws/install
                       sleep 15
					   
					   #### Install Terraform ####
                       sudo apt-get install wget -y
                       wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
                       echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
                       sudo apt-get update -y 
                       sudo apt-get install terraform -y
                       sleep 15
                       
                       
                       docker --version
                       kubectl version --client
                       aws --version
                       terraform --version
                       
                       echo "Installation Completed Successfully!!"
					   
					   '''
				 }
			 }
		 }	
	
        stage('Checkout from Git'){
             steps{
                 dir('git-custom-dir') {
                 git branch: 'main', url: 'https://github.com/KrMayank02/Super-Mario-Game-Deploy-EKS.git'
                  }
            }
        }
		
        stage('Terraform Version'){
             steps{
                 sh 'terraform --version'
             }
        }
		
        stage('Terraform Init'){
             steps{
                 dir('git-custom-dir/EKS-TF') {
                      sh 'terraform init'
                   }
             }
        }
		
        stage('Terraform Validate'){
             steps{
                 dir('git-custom-dir/EKS-TF') {
                      sh 'terraform validate'
                   }
             }
        }
		
        stage('Terraform Plan'){
             steps{
                 dir('git-custom-dir/EKS-TF') {
                      sh 'terraform plan'
                   }
             }
        }
		
        stage('Terraform Apply'){
             steps{
                 dir('git-custom-dir/EKS-TF') {
                     script{
                        sh '''
                        terraform apply --auto-approve
                        sleep 20

                        ## Configure kubeconfig to use the newly created EKS cluster ##
                        aws eks update-kubeconfig --name EKS_CLOUD --region us-east-1

                       '''
                    }
                 }
             }
        }

      stage('Deployment and Service on EKS'){
             steps{
                 dir('git-custom-dir') {
                    script{
                       sh '''
                                                                
                        ## App Deployment on EKS ##
                        kubectl apply -f deployment.yaml
                        sleep 40
                        
                        ## Expose App with Service and set-up Load Balancer ##
                        kubectl apply -f service.yaml
                        sleep 15
                        kubectl get all
                        
                        ## Describe Service, Copy the LoadBalancer Ingress and hit the Ingress link in browser. The Mario game loads, play & enjoy ##
                        kubectl describe service mario-service

                        '''
                    }
                 }
             }
        }

       ## Below Stage is for Clean up of Infrastructure Resources and Kubernetes resources. By default, keep this stage Commented ##
       ## When Required to clean up resources, uncomment this stage script and then execute under pipeline ##

  /*   stage('Deprovision & Remove Resources') {
            steps {
			    dir('git-custom-dir') {
					script {
                        sh '''
						
                        ## Clean up Kubernetes Resources ##
                        echo "Deleting Kubernetes Service and Deployment..."
						
                        kubectl delete service mario-service || true
                        kubectl delete deployment mario-deployment || true
                        
                        ## Deprovision & Remove all infrastructure resources managed by Terraform ##
                        echo "Destroying Terraform-managed resources..."
						
                        cd EKS-TF
                        terraform destroy --auto-approve
						
                        '''
                    }
                }
            }
        }      */
    }
}
