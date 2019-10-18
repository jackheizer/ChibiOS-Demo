pipeline {
    agent {
        dockerfile {
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('HW') {
            steps {
                sh 'arm-none-eabi-gcc --version'
                sh 'make'
            }
        }
    }
}
