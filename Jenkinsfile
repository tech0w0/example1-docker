pipeline {
    agent {dockerfile: true}

    tools {
     go { 'go-1.14' }
    }

    stages {
       stage('Copy artifact') {
          steps {
             copyArtifacts filter: 'example1', fingerprintArtifacts: true, projectName: 'example1', selector: lastSuccessful()
          }
       }

       stage('Build docker image') {
	  steps {
	     sh 'docker build -t csagan/example1:latest .'
          }
       }
  
       stage('Push docker image') {
          steps {
 	     withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'password', usernameVariable: 'user')]) {
    		sh "docker login -u ${user} -p ${password}"
	     }
             sh 'docker push csagan/example1:latest'
	  }
       }
    }
}
