pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				bat 'mvn clean install'
			}
		}
		stage('Deploy CloudHub') {
			environment {
				ANYPOINT_CREDENTIALS = credentials('anypoint.credentials')
			}		
			steps {
				bat 'mvn package deploy -DmuleDeploy -Dmule.version=4.1.3 -Danypoint.username=%ANYPOINT_CREDENTIALS_USR% -Danypoint.password=%ANYPOINT_CREDENTIALS_PSW% -P cloudhub'
			}
		}
	}
}