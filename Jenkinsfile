pipeline {
    agent any

    environment {
        DOCKER_PATH = "C:\\Program Files\\Docker\\cli-plugins"
        FLUTTER_PATH = "C:/src/flutter/flutter_windows_3.7.7-stable/flutter/bin"
        GIT_PATH = "C:/Program Files/Git/bin"
        PATH = "${DOCKER_PATH};${FLUTTER_PATH};${GIT_PATH};${PATH}"
        DOCKERHUB_CREDENTIALS = credentials('DockerHub')
        MAVEN_HOME = "D:\\apache-maven-3.9.5"
        MAVEN_PATH = "${MAVEN_HOME}\\bin;${PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                }
            }
        }

  

        stage('Build and Dockerize') {
            steps {
                dir('lib') {
                    // Étape de construction du projet Flutter
                
                     bat "\"${GIT_PATH}/git\" --version"
                    bat 'flutter pub get'
                    bat 'flutter build apk --release'

                    // Étape de construction de l'image Docker
                    // Assurez-vous que Docker est installé et accessible dans le chemin
                    bat "docker build -t flutter-img:${BUILD_ID} ."
                }
            }
        }
    }

    // Ajoutez d'autres directives du pipeline si nécessaire
    // ...
}
