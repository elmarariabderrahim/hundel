
	
pipeline {
  agent any
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    parameters {
        choice(name: 'CHOIX',
	       choices: ['1', '2'],
	       description: '1 : Exportation complete de la DB\n2 : Choix des composants necessaires')
  }
  stages {
    stage('Example') {
            steps {
        script{
                    if(CHOIX == '1')
                        echo 'yeah'
                    else
                        echo 'no'
                }
      }
    }
  }
}
