def jobName = '$JOB_NAME'

pipeline {
	agent any
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	
    stages {
        stage('generate_DDL') {
            steps {
		    	

			bat "sh  ./hundel.sh
		    
		   // bat "sh  ./hundel.sh  \"${jobName}\"  "
		  	// bat "sh -c  ./hundel.sh  ${jobName}  "		
			
		
            }
        }
       
    }
}
