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
    PATH = "/usr/local/bin/terraform:$PATH"
    sh  """
                    /usr/local/bin/terraform -v
            """
  }
  
  stage ('Terraform Init') {
    sh  """
            /usr/local/bin/terraform init -input=false
        """
  }
  stage ('Terraform Plan') {
    sh  """
            /usr/local/bin/terraform plan -input=false
        """ 
   
  }

  
  stage ('Terraform Apply') {
    sh  """
            /usr/local/bin/terraform plan -out=tfplan -input=false
        """ 
  }

  stage ('Post Run Tests') {
    echo "Insert your infrastructure test of choice and/or application validation here."
    sleep 2
     sh  """
            /usr/local/bin/terraform show
        """ 

  }

  }