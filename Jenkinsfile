pipeline{
    agent any
    environment {
        APP_NAME = "test app name"
    }
    stages {
        stage('Build Image'){
            steps {
                sh "echo ${env.APP_NAME}"
            }
        }
        stage('Build Stage (Docker)'){
            agent {label 'build-server'}
            steps {
                sh "docker build -t ghcr.io/pumpiya/piyapu ."
            }
        }
        stage('Deliver Docker Image') {
            agent {label 'build-server'}
            steps {
                withCredentials(
                [usernamePassword(
                    credentialsId: 'piyapu',
                    passwordVariable: 'gitlabPassword',
                    usernameVariable: 'gitlabUser'
                )]
            ){
                sh "docker login ghcr.io -u ${env.gitlabUser} -p ${env.gitlabPassword}"
                sh "docker push ${env.IMAGE_NAME}:${env.BUILD_NUMBER}"
            }
            }
        }
    }
}