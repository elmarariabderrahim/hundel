def jobName = "pp"
 def j =" $job_name"
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
		    
		    
		   
		    echo "$j"
		    bat 'sh ./hundel.sh `$j`  '
		  sh './hundel.sh $j  '
		   
		
            }
        }
       
    }
}
