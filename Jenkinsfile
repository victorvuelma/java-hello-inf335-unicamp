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
                    docker.build('java-hello-inf335-unicamp:latest')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('java-hello-inf335-unicamp:latest').run()
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