pipeline {
    agent any
    
    environment {
        // TF_VAR_ prefix lagane se Jenkins direct Terraform ko variable pass karta hai
        TF_VAR_env_name = "Production"
    }
    
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('Terraform Execution') {
            steps {
                echo 'Running Terraform for Production...'
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
