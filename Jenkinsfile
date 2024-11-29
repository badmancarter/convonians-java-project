pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'cd SampleWebApp && mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'cd SampleWebApp && mvn test'
            }
        }        
        stage('Deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tompass', url: 'http://54.197.208.143:8080/')], contextPath: 'myapp', war: '**/*.war'
            }
        }
    }
}
