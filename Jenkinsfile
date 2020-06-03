
pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                  // sh "aws cloudformation create-stack --stack-name eksRole --template-body file://eksRole.yml --region 'us-west-2' --capabilities CAPABILITY_IAM"
                  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                     AWS("--region=eu-west-2 s3 ls")
                  }
             }
         }
     }
}
