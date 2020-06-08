pipeline {
     agent any
     stages {
         stage('Role') {
             steps {
                  checkout scm
                  withAWS(region:'us-west-2',credentials:'AKIAU67QZTJVOFYJNYJ2') {
                         sh './create_cluster.sh'
                  }
             }  
         }
     }
}
