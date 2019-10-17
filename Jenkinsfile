pipeline {
    agent { dockerfile true }
    stages {
        stage('HW') {
            steps {
                sh 'arm-none-eabi-gcc --version'
                sh 'make'
            }
        }
    }
}
