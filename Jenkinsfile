pipeline {
    agent {
        dockerfile {
            args '--privileged -v /dev/bus/usb:/dev/bus/usb -v /dev/tty:/dev/tty'
        }
    }
    stages {
        stage('build') {
            steps {
                sh 'make'
                sh 'whoami'
            }
        }
        stage('flash') {
            steps {
                sh 'dpkg-query -L openocd | grep udev'
                sh 'openocd -f /usr/share/openocd/scripts/interface/stlink-v2-1.cfg -f /usr/share/openocd/scripts/target/stm32l0.cfg -c "program build/ChibiOS-Demo.elf verify reset exit"'
            }
        }
    }
}
