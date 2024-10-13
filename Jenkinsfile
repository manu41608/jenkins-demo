pipeline {
    agent any // Use any available agent

    stages {
        stage('Clone Repository') {
            steps {
                // Clone your repository (modify URL as needed)
                git 'https://github.com/manu41608/jenkins-demo.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image from the Dockerfile
                script {
                    sh 'docker build -t hello-world-java Dockerfile'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run the Docker container
                script {
                    sh 'docker run --rm hello-world-java'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Build and run succeeded!'
        }
        failure {
            echo 'Build or run failed!'
        }
    }
}
