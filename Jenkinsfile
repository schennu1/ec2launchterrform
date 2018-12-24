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
                   env.PATH += ":/usr/local/bin/terraform"
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