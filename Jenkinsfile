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
        withDockerRegistry([ credentialsId: "DockerHubPwd", url: "https://hub.docker.com/repository/docker" ]) { 
          sh  'docker push maksimnedbalskiy/jenkins' 
        } 
 
          } 
        } 
    } 
}