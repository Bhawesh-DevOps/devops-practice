pipeline {
    agent { 
        label 'linux-worker' 
    }
    
    environment {
        // Yahan single quotes ('') ke andar apna Docker Hub username likhein
        DOCKER_USER = 'apna_dockerhub_username'
        
        // Yeh line DOUBLE QUOTES ("") mein hi honi chahiye taaki Jenkins isko jodh sake
        IMAGE_NAME = "${DOCKER_USER}/my-org-app"
    }
    
    triggers { 
        pollSCM('* * * * *') 
    }
    
    stages {
        stage('Docker Build') {
            steps {
                echo "Building image ${IMAGE_NAME}..."
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }
        stage('Docker Login & Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER_CREDS')]) {
                    sh "echo \$DOCKER_PASS | docker login -u \$DOCKER_USER_CREDS --password-stdin"
                    sh "docker push ${IMAGE_NAME}:latest"
                }
            }
        }
    }
    post {
        always {
            // Security best practice: kaam hone ke baad Docker Hub se logout
            sh 'docker logout'
        }
    }
}
