pipeline {
     agent any
     checkout scm
     stages {
         stage('Role') {
             steps {
                  withAWS(region:'us-west-2',credentials:'marksun') {
                       sh 'create_cluster.sh'
                  }
             }  
         }
     }
}
