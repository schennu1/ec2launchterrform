pipeline {

  agent any

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('TF Plan') {
      steps {
          script {
          def tfHome = tool name: ‘Terraform’
          env.PATH = “${tfHome}:${env.PATH}”
           }
          sh ‘terraform — version’
          sh 'terraform init'
          sh 'terraform plan -out myplan'
          sh 'terraform apply'
      }      
    }
  } 

}