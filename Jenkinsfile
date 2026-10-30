pipeline {
    agent any
    
    // Yeh block Jenkins ko har 1 minute mein GitHub check karne ko bolega
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('Hello from GitHub') {
            steps {
                echo 'Yeh pipeline ab totally automated hai!'
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
