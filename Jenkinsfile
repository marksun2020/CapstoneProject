pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                  checkout scm
                  withAWS(region:'us-west-2',credentials:'marksun') {
                       sh 'eksctl create cluster --name capstoneCluster --region us-west-2'
                  }
             }  
         }
     }
}
