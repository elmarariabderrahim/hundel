
pipeline {
  agent any
		
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
	parameters {
    choice(
      name: 'Env',
      choices: ['QA', 'DEV', 'UAT', 'PROD'],
      description: 'Passing the Environment'
    )
  }
  stages {
    stage('Environment') {
      steps {
        echo " The environment is ${params.Env}"
      }
    }
  }
}
