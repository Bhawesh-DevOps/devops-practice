pipeline {
    agent { label 'linux-worker' }
    
    environment {
        // Yahan apna Docker Hub username zaroor likhein
        DOCKER_USER = 'apna_username'
        IMAGE_NAME = "${bhaweshhub}/my-org-app"
    }
    
    triggers { pollSCM('* * * * *') }
    
    stages {
        stage('Docker Build') {
            steps {
                echo 'Building image...'
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }
        stage('Docker Login & Push') {
            steps {
                // Jenkins aapke save kiye credentials ko securely yahan layega
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER_CREDS')]) {
                    sh "echo \$DOCKER_PASS | docker login -u \$DOCKER_USER_CREDS --password-stdin"
                    sh "docker push ${IMAGE_NAME}:latest"
                }
            }
        }
    }
    post {
        always {
            // Security ke liye pipeline ke end mein logout karna best practice hai
            sh 'docker logout'
        }
    }
}
