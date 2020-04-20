
	
pipeline {
  agent any
	
	 environment {
    		PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${env.PATH}"
		 }
    parameters {
        choice(name: 'CHOIX',
	       choices: ['dump', 'ddl'],
	       description: '1 : Exportation complete de la DB\n2 : Choix des composants necessaires')
  }
  stages {
    stage('Example') {
            steps {
		    withCredentials([
					usernamePassword(
						credentialsId: '0467c09c-9a30-4e9f-bdc9-6126fd2482d4', 
						usernameVariable: 'USERNAME',
						passwordVariable: 'PASSWORD'
						
						
					)
			]){
        script{
                    if(CHOIX == 'dump')
                        bat "sh  ./hundel.sh root pixid123"
                    else
                        bat "sh  ./exp_script.sh"
                }
		    }
      }
    }
  }
}
