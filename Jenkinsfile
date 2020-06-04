pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                  // sh "aws cloudformation create-stack --stack-name eksRole --template-body file://eksRole.yml --region 'us-west-2' --capabilities CAPABILITY_IAM"
                  echo "acces id ${AWS_ACCESS_KEY_ID}"
             }
         }
     }
}
