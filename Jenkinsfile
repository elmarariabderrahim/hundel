
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
			if(Env = 'dump')
                        echo 'dump'
                    else
                        echo 'ddl 2'
                }
	   
	    
	    }
	    }
  
}
