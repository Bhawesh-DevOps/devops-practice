pipeline {
    agent { label 'linux-worker' }

    triggers { pollSCM('* * * * *') }

    stages {
        stage('Docker Build on Worker') {
            steps {
                echo 'Worker Node par organisation ki app image build ho rahi hai...'
                sh 'docker build -t my-org-app .'
            }
        }
        stage('Verify Image') {
            steps {
                sh 'docker images | grep my-org-app'
            }
        }
    }
}
