pipeline{
    agent any
    environment {
        APP_NAME = "test app name"
        IMAGE_NAME = "ghcr.io/pumpiya/piyapu"
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
                sh "docker build -t ${env.IMAGE_NAME} ."
            }
        }
        stage('Deliver Docker Image') {
            agent {label 'build-server'}
            steps {
                withCredentials(
                [usernamePassword(
                    credentialsId: 'Piyapu',
                    passwordVariable: 'gitlabPassword',
                    usernameVariable: 'gitlabUser'
                )])
                {
                    sh "docker login ghcr.io -u ${env.gitlabUser} -p ${env.gitlabPassword}"
                    sh "docker tag ${env.IMAGE_NAME} ${env.IMAGE_NAME}:${env.BUILD_NUMBER}"
                    sh "docker push ${env.IMAGE_NAME}"
                    sh "docker push ${env.IMAGE_NAME}:${env.BUILD_NUMBER}"
                    sh "docker rmi ${env.IMAGE_NAME}"
                    sh "docker rmi ${env.IMAGE_NAME}:${env.BUILD_NUMBER}"
                }
            }
        }
    }
}
// xxxx