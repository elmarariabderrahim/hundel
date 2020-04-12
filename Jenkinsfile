def jobName = env.JOB_NAME
pipeline {
    agent any 
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    stages {
        stage('generate_DDL') {
            steps {
			echo "$jobName"	    
		    bat 'sh -c ./hundel.sh  env.JOB_NAME $WORKSPACE 4'
		   	
		    
            }
        }
       
    }
}
