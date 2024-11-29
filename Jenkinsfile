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
        
        stage('Deploy to Tomcat server') {
            steps {
                    deploy adapters: [tomcat9(credentialsId: 'tompass', path: '', url: 'http://54.197.208.143:8080/')], contextPath: 'myapp', war: '**/.war'            }
        }
    }
}
