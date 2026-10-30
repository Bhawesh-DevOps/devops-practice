pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Docker Image ban rahi hai...'
                sh 'docker build -t bhawesh-test-app .'
            }
        }
        stage('Verify Image') {
            steps {
                echo 'Check kar rahe hain ki image ban gayi ya nahi...'
                sh 'docker images | grep bhawesh-test-app'
            }
        }
    }
}
