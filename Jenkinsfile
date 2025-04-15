pipeline {
    agent any

    environment {
        APP_NAME = 'my-app'
        DOCKER_IMAGE = 'my-app-image'
    }

    stages {
        stage('Checkout') {
            steps {
                // Pull the application code from the Git repository
                git 'https://github.com/suanx/my-app-repo.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    // Install dependencies
                    sh 'npm install'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Run the tests
                    sh 'npm test'
                }
            }
        }

        stage('Dockerize') {
            steps {
                script {
                    // Build the Docker image for the app
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run the Docker container
                    sh 'docker run -d -p 3000:3000 $DOCKER_IMAGE'
                }
            }
        }
    }

    post {
        always {
            // Clean the workspace after job completion
            cleanWs()
        }
    }
}
