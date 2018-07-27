pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './run.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
