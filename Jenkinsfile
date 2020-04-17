def jobName= '${JOBNAME}'
pipeline {
	agent any
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	
    stages {
        stage('generate_DDL') {
            steps {
		    	

		    bat 'sh -c  ./hundel.sh ${jobName}'
		    
				  // bat "sh -c  ./hundel.sh  \"${jobName}\"  "
		  	//bat "sh -c  ./hundel.sh  ${jobName}  "
			
		
            }
        }
       
    }
}
