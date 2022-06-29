pipeline {
  agent { 
    docker { 
      image 'python:alpine3.7'
      args '-p 5000:5000'
        } 
  }
  stages {
    stage('Build') {
      steps {
        sh 'pip install -r requirements.txt'
        sh 'apk add libstdc++'
        sh 'python ./app.py &'
      }
    }
    stage('Test App') {
      steps {
        echo "${env.NODE_NAME}"
        sh 'pwd'
        sh 'uname -a'
        sh 'python test.py'
      }
      post {
        always {
          junit 'test-reports/*.xml'
        }
      } 
    }

  }
}
