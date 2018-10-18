pipeline {
	agent any
	environment {
		ANYPOINT_CREDENTIALS = credentials('anypoint.credentials')
    }
	stages {
		stage('Build') {
			steps {
				sh 'mvn -f mule-jenkins-pipeline/pom.xml clean install'
			}
		}
		stage('Deploy CloudHub') {
			steps {
				sh 'mvn -f mule-jenkins-pipeline/pom.xml package deploy -DmuleDeploy -Dmule.version=4.1.3 -Danypoint.username=${ANYPOINT_CREDENTIALS_USR} -Danypoint.password=${ANYPOINT_CREDENTIALS_PSW} -P cloudhub'
			}
		}
	}
}