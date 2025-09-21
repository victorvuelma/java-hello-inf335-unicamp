pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/victorvuelma/java-hello-inf335-unicamp.git'
            }
        }


        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t java-hello-inf335-unicamp:latest .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run java-hello-inf335-unicamp:latest'
                }
            }
        }

    }

    post {
        always {
            cleanWs()
        }

        success {
            echo 'Pipeline executado com sucesso!'
        }

        failure {
            echo 'O pipeline falhou. Verifique os logs.'
        }
    }
}