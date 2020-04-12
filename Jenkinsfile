def jobName = env.JOB_NAME
def w = env.WORKSPACE
pipeline {
    agent any 
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    stages {
        stage('generate_DDL') {
            steps {
			echo " ${JOB_NAME}"
		    	echo "$w"
		    bat  ./hundel.sh   "${JOB_NAME}"
		   	
		    
            }
        }
       
    }
}
