def c =""
pipeline {
  agent any
	
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	parameters {
    choice(
      name: 'env',
      choices: ['1', '2'],
      description: 'Passing the Environment'
    )
  }
  stages {
	  
    stage('Environment') {
	    steps {
		    echo "Choice: ${params.env}"
		    echo "$c"
		    
		
	    }
	    }
  }
  
}
