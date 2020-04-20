
pipeline {
  agent any
		
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	parameters {
    choice(
      name: 'Env',
      choices: ['dump', 'ddl'],
      description: 'Passing the Environment'
    )
  }
  stages {
    stage('Environment') {
	    withCredentials([
					usernamePassword(
						credentialsId: '0467c09c-9a30-4e9f-bdc9-6126fd2482d4', 
						usernameVariable: 'USERNAME',
						passwordVariable: 'PASSWORD'
						
						
					)
			]){
	    if ( ${params.Env} == 'dump' ) {
	    	bat "sh hundel.sh ${USERNAME}  ${PASSWORD}"
	    }else {
	    	bat 'sh -c ./exp_script.sh '
	    }
	    }
    }
  }
}
