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
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        
          	sh  'docker push hanioukil/sprintwebapp:latest'
                  
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
