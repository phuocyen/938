pipeline {
    agent any

    stages {
        stage('Clone stage') {
            steps {
                // Lấy mã nguồn từ repository
                git url: 'https://github.com/phuocyen/938.git', branch: 'main', credentialsId: 'github-credentials-id'
            }
        }

        stage('Build stage') {
            steps {
                withDockerRegistry(credentialsId: '12', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t pynwi/938lan1 .'
                    sh 'docker push pynwi/938lan1'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
