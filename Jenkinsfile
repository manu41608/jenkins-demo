pipeline {
    agent none
    stages {
        stage('build') {
          agent { docker 'openjdk:17-jdk-alpine' }
            steps {
               javac sample.java
               java sample
            }
        }
    }
}
