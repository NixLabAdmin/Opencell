#!groovy​

node {
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git branch: 'VSPE_Jenkins_PaC', url: 'https://github.com/NixLabAdmin/Opencell.git/'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      mvnHome = tool 'Maven 3.5.0'
	  sh 'll'
	  sh 'git log'
   }
   stage('Build') {
      // Run the maven build
      if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
   stage('Results') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }   
   stage('SonarQube analysis') {
	def scannerHome = tool 'SonarQube Scanner NiXLabTOOLS1';
	withSonarQubeEnv('SonarServer-NixLabTOOLS1') {
		sh "${scannerHome}/bin/sonar-scanner"
		}
	}
}