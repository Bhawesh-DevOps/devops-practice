pipeline {
    agent any
    stages {
        stage('Hello from GitHub') {
            steps {
                echo 'Yeh pipeline direct GitHub ke Jenkinsfile se run ho rahi hai!'
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
