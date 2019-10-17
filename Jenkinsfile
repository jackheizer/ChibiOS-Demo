pipeline {
    agent { dockerfile true }
    stages {
        stage('HW') {
            steps {
                sh 'gcc-arm-none-eabi --version'
                sh 'make'
            }
        }
    }
}
