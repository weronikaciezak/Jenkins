pipeline {
    agent any
    options {
        skipDefaultCheckout()  // Skip the default SCM checkout
    }

    stages {
            stage('Clean Workspace') {
                steps {
                    sh 'docker-compose --version'
                    cleanWs()  // Clean the workspace to ensure a fresh start
                }
            }
        stage('Checkout') {
            steps {
                // Custom Git checkout with credentials
                git url: 'https://github.com/weronikaciezak/test.git',
                    branch: 'main',
                    credentialsId: 'GitHub'
            }
        }

        stage('Build') {
            steps {
                // Build Docker image
                sh 'docker build -t licencjat:latest .'
            }
        }

        stage('Deploy') {
            steps {
                // Shutdown any existing containers
                sh 'docker-compose down'
                // Bring up the containers in detached mode
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Deployment was successful!'
        }
        failure {
            echo 'There was an error during the build or deployment.'
        }
    }
}
