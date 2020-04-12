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
			echo "$jobName"
		    	echo "$w"
		    bat 'sh   ./hundel.sh ${jobName}'
		   	
		    
            }
        }
       
    }
}
