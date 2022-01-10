pipeline {
    agent any
 
   tools
    {
       maven "Maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/HaniOUKIL/CI_CD_hocem_sprint.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }

 
stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t sprintwebapp:latest .' 
                sh 'docker tag sprintwebapp hanioukil/sprintwebapp:latest'
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        	// withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          	sh  'docker push hanioukil/sprintwebapp:latest'
        	//  sh  'docker push nikhilnidhi/samplewebapp:$BUILD_NUMBER' 
        //}
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
   {
                sh "docker run -d -p 8003:8080 hanioukil/sprintwebapp"
 
            }
        }
    }
 }
