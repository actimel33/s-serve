pipeline {
    agent any
    stages {
        stage('Install Apache') {
            steps {
                echo 'Installing Apache2/httpd...'
                // Команда устанавливает сервер и сразу запускает его
                sh 'sudo apt-get update && sudo apt-get install -y apache2'
                sh 'sudo systemctl enable apache2 --now'
            }
        }
        stage('Monitor Logs') {
            steps {
                echo 'Checking access logs for 4xx and 5xx errors...'
                // Поиск ошибок 400-599 в логах. Если ошибок нет, выведет сообщение.
                sh "sudo grep -E ' (4|5)[0-9]{2} ' /var/log/apache2/access.log || echo 'No errors found'"
            }
        }
    }
}
