pipeline {
     agent any
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
