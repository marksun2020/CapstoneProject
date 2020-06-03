
pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                 sh "aws cloudformation create-stack --stack-name eksRole --template-body file://eksRole.yml --capabilities CAPABILITY_IAM"
             }
         }
     }
}
