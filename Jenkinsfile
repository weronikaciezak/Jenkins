pipeline {
    agent any
    options {
        skipDefaultCheckout()
    }

    stages {
            stage('Checkout') {
                steps {
                    git url: 'https://github.com/weronikaciezak/test.git',
                        branch: 'main',
                        credentialsId: 'GitHub'
                }
            }
            stage('Build') {
                steps {
                    sh 'docker build -t licencjat:latest .'
                }
            }
            stage('Deploy') {
                steps {
                    sh 'docker-compose down'
                    sh 'docker-compose up -d'
                }
            }

}
