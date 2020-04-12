def job= " "
pipeline {
    agent any 
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    stages {
        stage('generate_DDL') {
            steps {
			job = "$JOB_NAME"	    
        	     bat 'sh -c ./hundel.sh  job $WORKSPACE 4'
		   	echo "$JOB_NAME"
		    
            }
        }
       
    }
}
