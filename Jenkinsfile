pipeline {
    agent { 
        label 'linux-worker' 
    }
    
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('Agent Verification') {
            steps {
                echo 'Yeh pipeline ab Jenkins Master par nahi, Worker Node par chal rahi hai!'
                sh 'hostname'
                sh 'whoami'
            }
        }
    }
}
