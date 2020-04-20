
pipeline {
  agent any
	
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	parameters {
    choice(
      name: 'CHOICE',
      choices: ['dump', 'ddl'],
      description: 'Passing the Environment'
    )
  }
  stages {
	  
    stage('Environment') {
	    steps {
		    if ( ${params.CHOICE}.equals(dump)){
		 echo "Choice: ${params.CHOICE}"
		    }else {
			    echo "walo"
		    }
	   
	    
	    }
	    }
  }
  
}
