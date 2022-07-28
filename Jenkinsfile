pipeline { 
    agent any 
 stages { 
  stage('Docker Build and Tag') { 
           steps { 
 
                sh 'docker build -t nginx:myimage .' 
                sh 'docker tag nginx hardvik1/hw7:myimage' 
 
          } 
        } 
 
  stage('Publish image to Docker Hub') { 
 
            steps { 
        withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) { 
          sh  'docker push hardvik1/hw7:myimage' 
        } 
 
          } 
        } 
    } 
}