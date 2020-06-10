pipeline {
     agent any
     environment {
         registry = "marksun2020/capstone"
         registryCredential = 'dockerhub'
          dockerImage = ''
     }
     stages {
        stage('Prepare docker image') {
             steps{
                  script {
                    // dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    dockerImage = docker.build registry
                  }
             }
        }
        stage('Deploy Image') {
           steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        //dockerImage.push()
                         dockerImage.push($BUILD_NUMBER)
                        dockerImage.push("latest")
                    }
                }
           }
        }
        stage('Remove Unused docker image') {
           steps{
             sh "docker rmi $registry:$BUILD_NUMBER"
           }
         }  
         /*stage('Create EKS') {
             steps {
                  checkout scm
                  withAWS(region:'us-west-2',credentials:'marksun') {
                       sh 'eksctl create cluster --name capstone --region us-west-2 --nodes=2 --node-type=t2.micro'
                       // sh '/var/lib/jenkins/kubectl get nodes'
                  }
             }  
         }*/
          /*stage('Deploy kubernetes') {
               steps {
                    checkout scm
                    withAWS(region:'us-west-2',credentials:'marksun') {
                         sh "/var/lib/jenkins/kubectl apply -f deployment.yml"
                         sh "/var/lib/jenkins/kubectl apply -f deployment-service.yml"    
                    }
               }
          }*/
     }
}
