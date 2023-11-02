pipeline {
    agent {
        label "tech_farm"
    }

    stages {
        stage(' stage 1 git clone') {
            steps {
                echo 'clone form git '
                git 'https://github.com/sanjaybn77/Helloworld-latest.git'
            }
        }
         stage('stage 2 maven build') {
            steps {
                echo 'build from maven'
                sh 'mvn clean package'
            }
        }
          stage("stage 2.5.1 to stop and delete") {
            steps {
                 // here we delete the unnecessary containers with the use of container name  
                   //here how logic works 
                   //if (previous_containers == previous_containrs) 
                     // delete previous_containers
                      //else 
                      // ignore step 
                echo "to stop and delete"
                sh 'docker stop mywebsite_container || true'
                sh 'docker rm mywebsite_container || true' 
            }
        }
         stage(" 2.5.2 remove all images") {
            steps {
            // here we delete the unnecessary images 
                echo "remove all images"
                sh 'docker rmi -f $(docker images -q)'
            }
        }
        
        stage(" stage 3 docker build") {
            steps {
                echo "here we build the project through docker command"
                sh 'docker build -t mywebsite_abc .'
            }
        }
        stage(" stage 4 tag images") {
            steps {
                echo "tag images with my account that is sanjaybn77"
                sh 'docker tag mywebsite_abc sanjaybn77/mywebsite_abc'
            }
        }
         stage(" stage 5 login and deploy to my docker hub") {
            steps {
                echo "login and deploy to my docker hub"
                sh 'docker login -u sanjaybn77 -p @Sanjaybn98#'
                echo " docker push syntax: docker push <image_tag >"
                sh 'docker push sanjaybn77/mywebsite_abc'
            }
        }
      
         stage(" stage 6 to run my application") {
            steps {
                echo "to run my application"
                sh 'docker run --name mywebsite_container -d -p 8181:8080 sanjaybn77/mywebsite_abc'
            }
        }
       
    }
}
