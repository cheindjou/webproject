pipeline {
  
   agent any
  environment {
    TF_WORKSPACE = 'dev' //Sets the Terraform Workspace
    TF_IN_AUTOMATION = 'true'
    
    SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }
  
  
  stages {
    
    stage('Checkout') {
      steps {
        checkout scm
        sh 'sudo mkdir -p creds'
        sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/serviceaccount.json'
      }
    }
    stage('Terraform Init') {
      
      environment {
            TOOL = tool name: 'terraform', type: 'terraform'
           
                   }
      
      steps {
        sh "/home/jenkins/terraform init -input=false"
      }
    }
    stage('Terraform Plan') {
      steps {
        
      
        sh "/home/jenkins/terraform plan -out=tfplan -input=false "
      }
    }
    
    stage('approval'){
        steps{ 
          script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply Terraform', name: 'confirm'] ])
            }
             }
          }
    stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "${env.TERRAFORM_HOME}/terraform apply -input=false tfplan"
      }
    }
    stage('AWSpec Tests') {
      steps {
          sh '''#!/bin/bash -l
bundle install --path ~/.gem
bundle exec rake spec || true
'''

        junit(allowEmptyResults: true, testResults: '**/testResults/*.xml')
      }
    }
  }
}
