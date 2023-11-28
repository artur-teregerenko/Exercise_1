pipeline {
  agent any
  parameters {
    string defaultValue: 'https://www.google.com', description: 'url', name: 'url'
  }
  stages {
    stage('version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('check_url') {
      steps {
        sh 'python3 check_url.py ${url}'
      }
    }
  }
}
