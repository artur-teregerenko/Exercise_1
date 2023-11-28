pipeline {
  agent any
  parameters {
    string defaultValue: 'https://www.google.com', description: 'url', name: 'url'
  }
  stages {
    stage('check_url') {
      steps {
        sh 'bash check_url.sh ${url}'
      }
    }
  }
}
