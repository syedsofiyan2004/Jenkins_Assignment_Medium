
pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t my-test-image .'
                }
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    sh 'docker run -d --name test-container my-test-image'
                }
            }
        }
    }
}