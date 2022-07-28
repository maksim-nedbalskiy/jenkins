pipeline { 
    agent any 
 stages { 
  stage('Docker Build') { 
           steps { 
 
                sh 'docker build -t maksimnedbalskiy/jenkins .'  
 
          } 
        } 
 
  stage('Docker Publish') { 
 
            steps { 
        withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) { 
          sh  'docker push maksimnedbalskiy/jenkins' 
        } 
 
          } 
        } 
    } 
}