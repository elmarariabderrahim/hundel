def jobName = '$JOB_NAME'

pipeline {
	agent any
	node('label'){
		    //now you are on slave labeled with 'label'
		    def workspace = pwd()
		    //${workspace} will now contain an absolute path to job workspace on slave 
		}
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	
    stages {
        stage('generate_DDL') {
            steps {
		    	

			echo "$job_name"
			echo "${workspace}"
		    
		    bat "sh  ./hundel.sh  \"${jobName}\"  "
		  	// bat "sh -c  ./hundel.sh  ${jobName}  "		
			
		
            }
        }
       
    }
}
