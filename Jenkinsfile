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
          env.PATH += ":/usr/local/bin/terraform"
          sh ‘terraform — version’
          sh 'terraform init'
          sh 'terraform plan -out myplan'
          sh 'terraform apply'
      }      
    }
  } 

}