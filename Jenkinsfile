#!groovy

// Build Parameters
properties([ parameters([
  string( name: 'AWS_ACCESS_KEY_ID', defaultValue: 'AKIAJFZ4TXAV5DKPPB5A'),
  string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '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')
]), pipelineTriggers([]) ])

// Environment Variables
env.AWS_ACCESS_KEY_ID = AWS_ACCESS_KEY_ID
env.AWS_SECRET_ACCESS_KEY = AWS_SECRET_ACCESS_KEY

node {


  env.PATH += ":/usr/local/bin/terraform"
  sh ‘terraform — version’

  stage('Set Terraform path'){
   script {
     def tfHome = tool name: ‘Terraform’
     env.PATH = “${tfHome}:${env.PATH}”
         }
      sh ‘terraform — version’

  }

  stage ('Checkout') {
    checkout scm
  }
  
  stage ('Terraform Init') {
    sh 'terraform init -input=false'
  }
  stage ('Terraform Plan') {
    sh 'terraform plan -input=false'
  }

  // Optional wait for approval
  input 'Deploy stack?'

  stage ('Terraform Apply') {
    sh 'terraform apply'
  }

  stage ('Post Run Tests') {
    echo "Insert your infrastructure test of choice and/or application validation here."
    sleep 2
    sh 'terraform show'
  }

  }