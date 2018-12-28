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



  stage ('Checkout') {
    checkout scm
  }
  
  stage ('Terraform Init') {
    sh 'terraform init'
  }
  stage ('Terraform Plan') {
    sh 'terraform plan'
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