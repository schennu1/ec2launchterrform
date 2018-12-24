pipeline {

  agent any

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage(‘Set Terraform path’) {
      steps {
        script {
                  def tfHome = tool name: ‘Terraform’
                  env.PATH = “${tfHome}:${env.PATH}”
 }
        sh ‘terraform — version’
 
 
 }
 }

    stage('TF Plan') {
      steps {
          sh 'terraform init'
          sh 'terraform plan -out myplan'
          sh 'terraform apply'
      }      
    }
  } 

}