# Jenkins pipeline script

~~~
pipeline {
    agent { label 'slave1' }

    stages {
        stage('SCM_Checkout') {
            steps {
                echo 'Perform SCM Check out'
				git 'https://github.com/PaperLive-DevOps-Jan25/java-mvn-springbootapp.git'
            }
        }
        stage('Application Build') {
            steps {
                echo 'Perform Application Build using Maven'
				sh 'mvn clean package'
            }
        }
        stage('Deploy to Target Server - QA Testing') {
            steps {
                echo 'Perform Application Deployment to Target - Tomcat Server'
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Tomcat_server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/demo-1.0-SNAPSHOT.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}
~~~