pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh './run.sh'
            }
        }
    }
    post {
        always {
            #junit '**/target/*.xml'
        }
        failure {
            #mail to: team@example.com, subject: 'The Pipeline failed :('
        }
    }
}
