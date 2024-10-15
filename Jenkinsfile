pipeline {
    agent any // Use any available agent
     environment {
        //DOCKER_IMAGE = 'my-docker-image' // Replace with your Docker image name
        GITHUB_REPO = 'https://github.com/manu41608/jenkins-demo.git'
        BRANCH_NAME = 'main' // Change to your target branch if needed
    }
    stages {
        stage('Clone Repository') {
            steps {
                // Clone your repository (modify URL as needed)
                git url: GITHUB_REPO,
                branch: BRANCH_NAME
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image from the Dockerfile
                script {
                    sh '''
                    echo "building docker image"
                    docker build -t hello-world-java Dockerfile
                    
                    '''
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run the Docker container
                script {
                    sh '''
                    echo "running docker container" 
                    docker run -d hello-world-java
                   
                    '''
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
