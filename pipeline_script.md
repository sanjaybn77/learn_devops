pipeline {
    agent { label "tech_farm" }

    stages {
        stage('step_1') {
            steps {
                echo 'clone hello_worldproject from github'
                git 'https://github.com/vincloud2/Helloworld-latest.git'
            }
        }
          stage('step_2') {
            steps {
                echo 'build project using maven '
                sh 'mvn clean package'
            }
        }
          stage('step_3') {
            steps {
                echo 'deploy project in tomcat server'
                deploy adapters: [tomcat8(credentialsId: 'tomcat_admin', path: '', url: 'http://43.206.106.215:8080/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
