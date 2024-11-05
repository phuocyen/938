pipeline {
    agent any

    stages {
        stage('Clone stage') {
            steps {
                // Lấy mã nguồn từ repository
                git url: 'https://github.com/phuocyen/938.git', branch: 'main', credentialsId: 'github-credentials-id'
            }
        }

        stage('Clone stage') {
            steps {
                withDockerRegistry(credentialsId: '12', url: 'https://index.docker.io/v1/') {
                sh 'docker buid -t  pynwi/938lan1 .'
                sh 'docker push pynwi/938lan1'

                           }
            }
        }

        stage('Test') {
            steps {
                // Chạy unit tests
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                // Bước triển khai hoặc deploy
                echo 'Deploying the application...'
            }
        }
    }

    post {
        // Gửi thông báo hoặc thực hiện các bước khác khi build hoàn tất
        always {
            echo 'Build finished'
        }
        success {
            echo 'Build succeeded'
        }
        failure {
            echo 'Build failed'
        }
    }
}
