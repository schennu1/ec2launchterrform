#!groovy

// Build Parameters
properties([ parameters([
  string( name: 'AKIAJE6MIAR2MOBA2MVA', defaultValue: 'AKIAJE6MIAR2MOBA2MVA'),
  string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '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')
]), pipelineTriggers([]) ])

// Environment Variables
env.AWS_ACCESS_KEY_ID = AWS_ACCESS_KEY_ID
env.AWS_SECRET_ACCESS_KEY = AWS_SECRET_ACCESS_KEY

node {



  stage ('Checkout') {
    checkout scm
  }

  stage ('Terraform Plan') {
    sh 'terraform plan -no-color -out=create.tfplan'
  }

  // Optional wait for approval
  input 'Deploy stack?'

  stage ('Terraform Apply') {
    sh 'terraform apply -no-color create.tfplan'
  }

  stage ('Post Run Tests') {
    echo "Insert your infrastructure test of choice and/or application validation here."
    sleep 2
    sh 'terraform show'
  }

  }