def jobName = '$JOB_NAME'
 def j =" $job_name"
pipeline {
	agent any
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	
    stages {
        stage('generate_DDL') {
            steps {
		    	withCredentials([
					usernamePassword(
						credentialsId: '0467c09c-9a30-4e9f-bdc9-6126fd2482d4', 
						usernameVariable: 'USERNAME',
						passwordVariable: 'PASSWORD'
						
						
					)
			]){

			echo "$job_name"
		    	echo "$JOB_NAME"
		  echo "${USERNAME}"
		    echo "${PASSWORD}"
		   
		    echo "$j"
		    
		    //bat "sh  ./hundel.sh  \"${USERNAME}\"  \"${PASSWORD}\" "
		  	 bat "sh  ./hundel.sh  ${USERNAME}  ${PASSWORD} "		
			}
		
            }
        }
       
    }
}
