
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
	    steps {
	
		    script{
	    if ( ${params.Env} == 'dump' ) {
	    	bat "sh hundel.sh  root pixid123"
	    }else {
	    	bat 'sh -c ./exp_script.sh '
	    }
	    
	    }
	    }
    }
	  
  }
}
