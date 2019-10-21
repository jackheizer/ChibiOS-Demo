pipeline {
    agent {
        dockerfile {
            args '--group-add plugdev --device=/dev/bus -v /dev/serial:/dev/serial --device=/dev/tty'
        }
    }
    stages {
        stage('build') {
            steps {
                sh 'make'
            }
        }
        stage('flash') {
            steps {
                sh 'openocd -d 3 -f /usr/share/openocd/scripts/interface/stlink-v2-1.cfg -f /usr/share/openocd/scripts/target/stm32l0.cfg -c "program build/ChibiOS-Demo.elf verify reset exit"'
            }
        }
    }
}
