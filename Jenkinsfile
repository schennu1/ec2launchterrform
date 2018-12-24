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
          sh ‘terraform — version’
          sh 'terraform init'
          sh 'terraform plan -out myplan'
          sh 'terraform apply'
      }      
    }
  } 

}