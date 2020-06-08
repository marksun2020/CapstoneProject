pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                  withAWS(region:'eu-central-1',credentials:'aws') {
                       sh 'create_cluster.sh'
                  }
             }  
         }
     }
}
