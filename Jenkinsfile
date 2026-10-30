pipeline {
    agent any
    
    // Yeh block Jenkins ko har 1 minute mein GitHub check karne ko bolega
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('Hello from GitHub') {
            steps {
                echo 'Bina button dabaye pipeline chal gayi!'
            }
        }
        stage('System Check') {
            steps {
                echo 'Checking server details...'
                sh 'uname -a'
                sh 'uptime'
            }
        }
    }
}
