pipeline {
    agent any
	stages {
        stage('Init') {
            steps {
                echo 'Hi, This is Sabzar from Evry Tieto. Wellcome to Jenkins PipeLine'
                echo 'Initializing the project'
		    }
		}	
        stage('build') {
            steps {
                echo 'Building sample maven project'
				bat 'mvn clean package -f pom.xml'
            }
			 post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
			
        }
		stage('create Tomcat Docker image') {
            steps {
                echo 'creating Tomcat Docker image'
				bat 'docker build . -t tomcatsamplewebapp:${env.BUILD_ID}'
            }
        }
  
    }
}