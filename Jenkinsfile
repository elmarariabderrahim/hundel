def jobName = "pp"
pipeline {
    agent any 
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    stages {
        stage('generate_DDL') {
            steps {
			echo "$job_name"
		    	echo "$JOB_NAME"
		    
		    
		    def j =" $job_name"
		    echo "$j"
		    bat 'sh ./hundel.sh u  '
		
            }
        }
       
    }
}
