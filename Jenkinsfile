pipeline {
    agent any
    
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('Terraform Init') {
            steps {
                echo 'Initializing Terraform...'
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                echo 'Checking infrastructure plan...'
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                echo 'Deploying infrastructure...'
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Verify Deployment') {
            steps {
                sh 'cat jenkins_tf_test.txt'
            }
        }
    }
}
